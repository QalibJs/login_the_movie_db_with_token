import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:working_movie_token/app/home/screen/home_screen.dart';
import 'package:working_movie_token/app/login/screen/login_screen.dart';
import 'package:working_movie_token/cubit/login_cubit.dart';

class MyApp extends StatelessWidget {
  final int? home;
  final int? login;
  const MyApp({
    super.key,
    this.home,
    this.login,
  });

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientatio, deviceType) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => LoginCubit()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: login == 3
                ? const HomeScreen()
                : home == 2
                    ? const LoginScreen()
                    : const HomeScreen(),
          ),
        );
      },
    );
  }
}
