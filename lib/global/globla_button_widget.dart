import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:working_movie_token/constants/app_paddings.dart';
import '../constants/app_elevated_styles.dart';
import '../constants/app_text_style.dart';

class GlobalButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final Color? color;
  final TextStyle? textStyle;
  const GlobalButtonWidget({
    Key? key,
    this.onPressed,
    required this.text,
    this.color,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppPaddings.lr3h,
      width: MediaQuery.of(context).size.width,
      height: 6.h,
      child: ElevatedButton(
        onPressed: () => onPressed!(),
        style: AppElevatedStyles.elevatedButtonStyle(color!),
        child: Text(
          text,
          style: AppTextStyle.whiteMiddletext,
        ),
      ),
    );
  }
}
