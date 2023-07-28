import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../app/home/screen/home_screen.dart';
import '../constants/app_navigators.dart';
import '../data/model/fail/login_fail_model.dart';
import '../data/model/success/login_success_model.dart';
import '../data/service/hive_service.dart';
import '../data/service/login_service.dart';

class LoginCubit extends Cubit<int> {
  LoginCubit() : super(0);

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void login(String username, String password, context) async {
    final result = await LoginService.getloginService(
      username: username,
      password: password,
    );
    if (result is LoginSuccessResponseModel) {
      AppNavigators.go(context, const HomeScreen());
    } else if (result is LoginFailResponseModel) {
      print("error");
    } else {
      print("object");
    }
  }

  void saveState(int value) {
    HiveService.instance.then(
      (hive) => hive.saveData("login", value),
    );
  }

  @override
  Future<void> close() {
    usernameController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
