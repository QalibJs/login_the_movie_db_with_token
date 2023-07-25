import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:working_movie_token/app/login/screen/login_screen.dart';
import 'package:working_movie_token/constants/app_colors.dart';
import 'package:working_movie_token/constants/app_navigators.dart';
import 'package:working_movie_token/constants/app_texts.dart';
import 'package:working_movie_token/cubit/login_cubit.dart';
import 'package:working_movie_token/data/service/hive_service.dart';
import 'package:working_movie_token/global/globla_button_widget.dart';

class HomeLogOutButtonWidget extends StatelessWidget {
  const HomeLogOutButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    LoginCubit loginCubit = context.watch<LoginCubit>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GlobalButtonWidget(
          text: AppTexts.logOut,
          color: AppColors.black,
          onPressed: () {
            loginCubit.saveState(2);
            loginCubit.passwordController.clear();
            loginCubit.usernameController.clear();
            AppNavigators.go(
              context,
              const LoginScreen(),
            );
          },
        )
      ],
    );
  }
}
