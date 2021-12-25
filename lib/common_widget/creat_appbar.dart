import 'package:flutter/material.dart';

class CreatAppBar extends StatelessWidget with PreferredSizeWidget {
  final String label;

  final Size preferredSize;

  CreatAppBar({
    Key key,
    this.label,
  })  : preferredSize = Size.fromHeight(70.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      elevation: 0,
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/background.png")),
      ),
      title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            label,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                fontFamily: "cairo"),
          )),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[Colors.black, Colors.blueAccent],
          ),
        ),
      ),
    );
  }
}
