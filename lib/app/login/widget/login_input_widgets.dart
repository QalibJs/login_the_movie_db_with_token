import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_paddings.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_texts.dart';
import '../../../cubit/login_cubit.dart';
import '../../../global/global_input_widget.dart';

class LoginInputsWidget extends StatelessWidget {
  const LoginInputsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    LoginCubit loginCubit = context.watch<LoginCubit>();
    return Padding(
      padding: AppPaddings.lr3h,
      child: Form(
        key: loginCubit.formKey,
        child: Column(
          children: [
            GlobalInputWidget(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter email";
                }
                return null;
              },
              controller: loginCubit.usernameController,
              hintText: AppTexts.username,
            ),
            AppSizedBox.h10,
            GlobalInputWidget(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter email";
                }
                return null;
              },
              controller: loginCubit.passwordController,
              hintText: AppTexts.password,
            ),
          ],
        ),
      ),
    );
  }
}
