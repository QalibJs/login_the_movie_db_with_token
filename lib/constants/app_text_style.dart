import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'app_colors.dart';

class AppTextStyle {
  static get appBarStyle => TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.bold,
        fontSize: 12.sp,
      );
  static get whiteMiddletext => TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.bold,
        fontSize: 2.5.h,
      );
  static get topText => TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.bold,
        fontSize: 12.sp,
      );
  static get announce => TextStyle(
        color: AppColors.green,
        fontWeight: FontWeight.bold,
        fontSize: 13.sp,
      );
}
