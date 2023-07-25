import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:working_movie_token/constants/app_sized_box.dart';
import 'package:working_movie_token/cubit/login_cubit.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_texts.dart';
import '../../../global/globla_button_widget.dart';

class LoginButtonWidget extends StatefulWidget {
  const LoginButtonWidget({super.key});

  @override
  State<LoginButtonWidget> createState() => _LoginButtonWidgetState();
}

class _LoginButtonWidgetState extends State<LoginButtonWidget> {
  @override
  Widget build(BuildContext context) {
    LoginCubit loginCubit = context.watch<LoginCubit>();
    return Column(
      children: [
        AppSizedBox.h10,
        GlobalButtonWidget(
          text: AppTexts.login,
          onPressed: () {
            loginCubit.saveState(3);
            loginCubit.login(
              loginCubit.usernameController.text.trim(),
              loginCubit.passwordController.text.trim(),
              context
              
            );
          },
          color: AppColors.black,
        ),
      ],
    );
  }
}
