import 'package:budget_app/utilities/text_style.dart';
import 'package:flutter/material.dart';


class CreatTextField extends StatefulWidget {
  final String label;

  final TextEditingController controller;

  @override
  CreatTextField({
    Key key,
    this.label,
    this.controller,
  });

  @override
  State<CreatTextField> createState() => _CreatTextFieldState();
}

class _CreatTextFieldState extends State<CreatTextField> {
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.2,
      child: TextFormField(
        keyboardType: TextInputType.number,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.left,
        controller: widget.controller,
        style: BlackTitle.display5(context),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
          filled: true,
          fillColor: Colors.blueGrey[200],
          hintText: widget.label,
          hintStyle: BlackTitle.display5(context),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[200], width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey[200],
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(10.0)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[200], width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
        ),
      ),
    );
  }
}
