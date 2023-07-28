import 'package:flutter/material.dart';
import '../widgets/home_log_out_button.dart';
import '../widgets/home_widget.dart';
import '../../../constants/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          HomeWidget(),
          HomeLogOutButtonWidget(),
        ],
      ),
    );
  }
}
