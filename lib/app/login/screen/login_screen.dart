import 'package:flutter/material.dart';
import 'package:working_movie_token/constants/app_sized_box.dart';
import '../../../constants/app_colors.dart';
import '../widget/login_announcement.dart';
import '../widget/login_button_widget.dart';
import '../widget/login_input_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          const LoginAnnouncementWidget(),
          AppSizedBox.h60,
          const LoginInputsWidget(),
          const LoginButtonWidget(),
        ],
      ),
    );
  }
}
