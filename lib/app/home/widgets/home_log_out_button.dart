import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../login/screen/login_screen.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_navigators.dart';
import '../../../constants/app_texts.dart';
import '../../../cubit/login_cubit.dart';
import '../../../global/globla_button_widget.dart';

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
