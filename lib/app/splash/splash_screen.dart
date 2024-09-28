import 'package:driving_license/app/splash/splash_controller.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      autoRemove: false,
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.white_color,
        body: Center(
          child: Image.asset(
            "assets/images/logo.gif",
            height: 164,
            width: 214,
          ),
        ),
      ),
    );
  }
}
