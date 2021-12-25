
import 'package:flutter/material.dart';

class WhiteTitle {
  static TextStyle display5(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
          fontSize: 12,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.bold,
          color: Colors.white,
        );
  }
}


class WhiteTitlecomment {
  static TextStyle display5(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
          fontSize: 14,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.normal,
          color: Colors.white,
        );
  }
}

class BlackTitle {
  static TextStyle display5(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
          fontSize: 14,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.normal,
          color: Colors.black,
        );
  }
}

class WhiteLabel {
  static TextStyle display5(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
          fontSize: 12,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w600,
          color: Colors.white,
        );
  }
}

class VerySmallLabel {
  static TextStyle display5(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
          fontSize: 8,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.normal,
          color: Colors.white,
        );
  }
}

class BlackLabel {
  static TextStyle display5(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
          fontSize: 14,
          
          fontFamily: 'Cairo',
          fontWeight: FontWeight.bold,
          color: Colors.black,
        );
  }
}



class Regular {
  static TextStyle display5(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
          fontSize: 16,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.normal,
          //height: 1.2,
          color: Colors.white,
        );
  }
}

class BoldRegular {
  static TextStyle display5(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
          fontSize: 16,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.bold,
          color: Colors.black,
        );
  }
}

class BoldBlue {
  static TextStyle display5(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
          fontSize: 18,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        );
  }
}
