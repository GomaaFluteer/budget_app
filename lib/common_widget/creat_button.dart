import 'package:flutter/material.dart';

class CreatButton extends StatefulWidget {
  final double height, width, topMargin;
  final Function onPress;
  final String label;
  final Color color;

  final TextStyle labelStyle, titleStyle;

  CreatButton({
    Key key,
    this.height,
    this.width,
    this.onPress,
    this.label,
    this.color,
    this.topMargin,
    this.labelStyle,
    this.titleStyle,
  }) : super(key: key);

  @override
  _CreatButtonState createState() => _CreatButtonState();
}

class _CreatButtonState extends State<CreatButton> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPress,
      // onHover: widget.onHover,
      child: Container(
        height: widget.height,
        width: widget.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: widget.color == Colors.black
                    ? <Color>[
                        Colors.black,
                        Colors.black,
                        Colors.black,
                      ]
                    : <Color>[
                        Color(0xff764B0C),
                        Color(0xffE7C475),
                        Color(0xffBB8B3F),
                        Color(0xffC9994C),
                        Color(0xff9D6D22)
                      ]),
            borderRadius: BorderRadius.circular(5)),
        child: Text(
          widget.label,
          style: widget.labelStyle,
        ),
      ),
    );
  }
}
