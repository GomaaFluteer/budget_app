import 'package:budget_app/common_widget/creat_alert_dialoge.dart';
import 'package:budget_app/common_widget/creat_appbar.dart';
import 'package:budget_app/common_widget/creat_textfield.dart';
import 'package:budget_app/providers/budget_provider.dart';
import 'package:budget_app/utilities/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const route = "HomeScreen";

  const HomeScreen({Key key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BudgetProvider budgetProvider;
  TextEditingController _savingController = TextEditingController();
  TextEditingController _spendingController = TextEditingController();
  TextEditingController _incomeController = TextEditingController();

  List<String> titles = ["Saving", "Spending", "Income"];

  @override
  void initState() {
    super.initState();

    budgetProvider = Provider.of<BudgetProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    budgetProvider = Provider.of<BudgetProvider>(context, listen: true);
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CreatAppBar(label: "Main Page"),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.fill,
              )),
            ),
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(30),
                shrinkWrap: false,
                reverse: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 2.0,
                    crossAxisSpacing: 2.0,
                    childAspectRatio: 0.8),
                itemCount: 3,
                itemBuilder: (context, gridindex) => Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10.0),
                      // color: Colors.transparent,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey, width: 2)),
                      height: size.height,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: size.height * 0.1,
                            // color: Colors.red,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(color: Colors.grey, width: 2)),
                            child: Text(
                              titles[gridindex],
                              style: BoldBlue.display5(context),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: gridindex == 0
                                      ? budgetProvider.allSaving.length
                                      : gridindex == 1
                                          ? budgetProvider.allSpending.length
                                          : budgetProvider.allIncome.length,
                                  itemBuilder: (context, index) => Container(
                                        margin: EdgeInsets.all(3.0),
                                        // color: Colors.white,
                                        height: 35,
                                        child: Container(
                                          child: Text(
                                            gridindex == 0
                                                ? budgetProvider
                                                    .allSaving[index]
                                                    .toString()
                                                : gridindex == 1
                                                    ? budgetProvider
                                                        .allSpending[index]
                                                        .toString()
                                                    : budgetProvider
                                                        .allIncome[index]
                                                        .toString(),
                                            style: BlackLabel.display5(context),
                                          ),
                                        ),
                                      )),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            width: size.width * 0.1,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey[300],
                                borderRadius: BorderRadius.circular(10)),
                            child: Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Text(
                                    'Total : ',
                                    style: BlackTitle.display5(context),
                                  ),
                                  Text(gridindex == 0
                                      ? budgetProvider.summSaving.toString()
                                      : gridindex == 1
                                          ? budgetProvider.summSpend.toString()
                                          : budgetProvider.summIncome
                                              .toString())
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                  flex: 3,
                                  child: CreatTextField(
                                    label: "Enter a mount",
                                    controller: gridindex == 0
                                        ? _savingController
                                        : gridindex == 1
                                            ? _spendingController
                                            : _incomeController,
                                  )),
                              Expanded(
                                flex: 1,
                                child: Container(
// margin: EdgeInsets.only(bottom: 30),
                                    height: 75,
                                    child: IconButton(
                                        onPressed: () {
                                          if (_savingController.text.isEmpty &&
                                              _spendingController
                                                  .text.isEmpty &&
                                              _incomeController.text.isEmpty) {
                                            print(gridindex);
                                            CreatAlertDialog()
                                                .warningEmptyAlert(context);
                                          } else {
                                            print(gridindex);
                                            if (gridindex == 0) {
                                              budgetProvider.addSavingLE(
                                                  index: budgetProvider
                                                      .allSaving.length,
                                                  savingMoney: int.parse(
                                                      _savingController.text));
                                              _savingController.clear();
                                            }
                                            if (gridindex == 1) {
                                              budgetProvider.addSpendingLE(
                                                  index: budgetProvider
                                                      .allSpending.length,
                                                  spendingMoney: int.parse(
                                                      _spendingController
                                                          .text));
                                              _spendingController.clear();
                                            }
                                            if (gridindex == 2) {
                                              budgetProvider.addIncomeLE(
                                                  index: budgetProvider
                                                      .allIncome.length,
                                                  incomeMoney: int.parse(
                                                      _incomeController.text));
                                              _incomeController.clear();
                                            }
                                          }
                                        },
                                        icon: Icon(
                                          FontAwesomeIcons.poundSign,
                                          size: 40,
                                          color: Colors.blueGrey[200],
                                        ))),
                              )
                            ],
                          )
                        ],
                      ),
                    ))
          ],
        ));
  }
}
