import 'package:flutter/material.dart';

class BudgetProvider extends ChangeNotifier {
  // (Saving, Spending, and Income),
  List<int> allSaving = [];
  List<int> allSpending = [];
  List<int> allIncome = [];
  int summSaving = 0  , summSpend =  0 , summIncome = 0;
  void addSavingLE({int index, int savingMoney}) {
    allSaving.insert(index, savingMoney);
    final myList = allSaving;
    summSaving = myList.reduce((sum, element) {
      return sum + element;
    });
    notifyListeners();
  }

  void addSpendingLE({int index, int spendingMoney}) {
     allSpending.insert(index, spendingMoney);
    final myListSpend = allSpending;
    summSpend = myListSpend.reduce((sum, element) {
      return sum + element;
    });
    notifyListeners();

  }

  void addIncomeLE({int index, int incomeMoney}) {
     allIncome.insert(index, incomeMoney);
    final myListIncome = allIncome;
    summIncome   = myListIncome.reduce((sum, element) {
      return sum + element;
    });

    notifyListeners();
  }
}
