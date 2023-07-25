import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/app_text_style.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
            child: SizedBox(
              width: 20.h,
              height: 20.h,
              child: Text(
                "Success my bro! NEVER GIVE UP!!!",
                style: AppTextStyle.appBarStyle,
              ),
            ),
          );
  }
}