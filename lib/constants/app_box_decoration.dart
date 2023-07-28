import 'package:flutter/material.dart';
import 'package:working_movie_token/constants/app_colors.dart';

class AppBoxDecoration {
  AppBoxDecoration._();

  static get announcment =>
     BoxDecoration(
      color: AppColors.white,
      border: Border.all(color: AppColors.black, width: 3),
      borderRadius: BorderRadius.circular(12),
    );
}
