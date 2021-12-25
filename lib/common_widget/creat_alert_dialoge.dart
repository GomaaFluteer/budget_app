
import 'package:budget_app/common_widget/creat_button.dart';
import 'package:budget_app/utilities/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CreatAlertDialog {





  // validationText(BuildContext context, String text) {
  //   showDialog(
  //       context: context,
  //       barrierDismissible: false,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           shape:
  //               RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  //           backgroundColor: Colors.white,
  //           contentPadding: EdgeInsets.only(top: 10, left: 10, right: 10),
  //           elevation: 5,
  //           content: Container(
  //               height: 250,
  //               width: 310,
  //               child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.center,
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   Text(
  //                     " !!  تنبيه",
  //                     style: BoldNormal.display5(context),
  //                   ),
  //                   Text(
  //                     text,
  //                     style: BoldNormal.display5(context),
  //                   ),
  //                   CreatButton(
  //                     topMargin: 22,
  //                     buttonType: "smallbutton",
  //                     height: 37.0,
  //                     width: 129,
  //                     label: "موافق",
  //                     labelStyle: BoldNormal.display5(context),
  //                     onPress: () {
  //                       Navigator.pop(context);
  //                     },
  //                   ),
  //                 ],
  //               )),
  //         );
  //       });
  // }







 warningEmptyAlert(BuildContext context) {
   Size size = MediaQuery.of(context).size;
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: Colors.white,
            contentPadding: EdgeInsets.only(top: 10, left: 10, right: 10),
            elevation: 5,
            content: Container(
                height: size.height*0.2,
                width:  size.height*0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " warning !!!",
                      style: BoldRegular.display5(context),
                    ),
                    Text(
                      "please Enter value",
                      style: BoldRegular.display5(context),
                    ),
                    CreatButton(
                      topMargin: 22,
                      height: 37.0,
                      width: 129,
                      label: "موافق",
                      labelStyle: BoldRegular.display5(context),
                      onPress: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                )),
          );
        });
  }













}
