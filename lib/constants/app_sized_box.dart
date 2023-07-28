import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppSizedBox {
  AppSizedBox._();

  static get hh10 =>  SizedBox(
        height: 1.h,
      );
  static get h10 => const  SizedBox(
        height: 10,
      );
  static get h60 => const SizedBox(
        height: 60,
      );
  static get h25 => const SizedBox(
        height: 25,
      );
}
