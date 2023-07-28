import 'package:flutter/material.dart';
import 'package:working_movie_token/constants/app_box_decoration.dart';
import 'package:working_movie_token/constants/app_paddings.dart';
import 'package:working_movie_token/constants/app_sized_box.dart';
import 'package:working_movie_token/constants/app_text_style.dart';
import 'package:working_movie_token/constants/app_texts.dart';

class LoginAnnouncementWidget extends StatelessWidget {
  const LoginAnnouncementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: AppPaddings.lr3h,
          width: MediaQuery.of(context).size.width,
          height: 190,
          decoration: AppBoxDecoration.announcment,
          child: Padding(
            padding: AppPaddings.all10.copyWith(top: 2, bottom: 2),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AppSizedBox.h25,
                  Text(
                    AppTexts.announcement,
                    style: AppTextStyle.appBarStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 30,
                width: 130,
                decoration: AppBoxDecoration.announcment,
                child: Center(
                    child: Text(
                  AppTexts.announce,
                  style: AppTextStyle.announce,
                ))),
          ],
        ),
      ],
    );
  }
}
