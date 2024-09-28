// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:driving_license/routes/app_pages.dart';
import 'package:driving_license/utils/app_buttons/app_buttons.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_constants/text_strings.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white_color,
      body: SafeArea(
        minimum: EdgeInsets.fromLTRB(20, 80, 20, 40),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AppText(
                      title: ConstantStrings.VerText,
                      fontWeight: FontWeight.w700,
                      size: 24,
                    ),
                    SizedBox(height: 20),
                    AppText(
                      title: ConstantStrings.SendcodeText,
                      textAlign: TextAlign.center,
                      size: 16,
                      color: AppColors.description_color,
                      height: 1.5,
                    ),
                    SizedBox(height: 180),
                    PinCodeTextField(
                      appContext: context,
                      length: 5,
                      autoDisposeControllers: false,
                      animationType: AnimationType.fade,
                      textStyle:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
                      pinTheme: PinTheme(
                          fieldHeight: 50,
                          fieldWidth: 50,
                          shape: PinCodeFieldShape.box,
                          borderWidth: 1,
                          activeColor: AppColors.grey_color,
                          inactiveColor: AppColors.grey_color,
                          inactiveFillColor: Colors.transparent,
                          activeFillColor: Colors.transparent,
                          selectedFillColor: Colors.transparent,
                          selectedColor: AppColors.primaryColor,
                          disabledColor: AppColors.grey_color,
                          borderRadius: BorderRadius.circular(10),
                          fieldOuterPadding: EdgeInsets.only(right: 10)),
                      cursorColor: AppColors.primaryColor,
                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,
                      keyboardType: TextInputType.number,
                      onCompleted: (String verificationCode) {},
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: () {},
                      child: AppText(
                        title: ConstantStrings.ResendText,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                        size: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            AppButton(
              buttonName: ConstantStrings.ConfirmText,
              onTap: () {
                Get.toNamed(Routes.profileRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
