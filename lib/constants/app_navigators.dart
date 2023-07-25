import 'package:flutter/material.dart';

class AppNavigators {
  AppNavigators._();

  static go(context, Widget screen) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }
}
