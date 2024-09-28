// ignore_for_file: prefer_const_constructors

import 'package:driving_license/app/auth/controller/auth_controller.dart';
import 'package:driving_license/routes/app_pages.dart';
import 'package:driving_license/utils/app_buttons/app_buttons.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_constants/const_images.dart';
import 'package:driving_license/utils/app_constants/text_strings.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:driving_license/utils/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInView extends StatelessWidget {
  LogInView({super.key});
  final formKey = GlobalKey<FormState>();

  // bool isEmailValid(String email) {
  //   return RegExp(r'^[\w-\.]+@[a-zA-Z]+\.[a-zA-Z]{2,}$').hasMatch(email);
  // }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      autoRemove: false,
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.white_color,
        body: SafeArea(
          minimum: EdgeInsets.fromLTRB(20, 80, 20, 40),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        AppText(
                          title: ConstantStrings.loginText,
                          size: 24,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(height: 35),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              title: ConstantStrings.emailText,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(height: 8),
                            appField(
                              context: context,
                              hint: ConstantStrings.emailHintText,
                              // validator: (value) {
                              //   if (!isEmailValid(value.toString())) {
                              //     return "Enter email address";
                              //   }
                              //   return null;
                              // },
                            ),
                            SizedBox(height: 15),
                            AppText(
                              title: ConstantStrings.passwordText,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(height: 8),
                            Obx(() {
                              return appField(
                                context: context,
                                hint: ConstantStrings.passwordHintText,
                                isSuffix: true,
                                suffixWidget: IconButton(
                                  onPressed: () {
                                    controller.togglePasswordVisibility();
                                  },
                                  icon: Icon(controller.isPasswordHidden.value
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                ),
                                obscure: controller.isPasswordHidden.value,
                                // validator: (value) {
                                //   if (value!.length < 6) {
                                //     return 'Password must contain at least 6 characters';
                                //   }
                                //   if (!value.contains(RegExp(r'[A-Z]'))) {
                                //     return 'Password must contain at least one uppercase \nletter';
                                //   }
                                //   if (!value.contains(RegExp(r'[a-z]'))) {
                                //     return 'Password must contain at least one \nlowercase letter';
                                //   }
                                //   if (!value.contains(RegExp(r'[0-9]'))) {
                                //     return 'Password must contain at least one digit';
                                //   }
                                //   return null;
                                // },
                              );
                            }),
                            SizedBox(height: 10),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Forgot Password',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            AppButton(
                              buttonName: ConstantStrings.loginText,
                              onTap: () {
                                Get.toNamed(Routes.homeRoute);
                                // if (formKey.currentState!.validate()) {}
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        AppText(
                          title: ConstantStrings.loginbymailText,
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.grey_color),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 16),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(ImageConst.google_logo),
                                      SizedBox(width: 10),
                                      AppText(
                                        title: ConstantStrings.googleText,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.faceBookBoxColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        ImageConst.facebook_logo,
                                      ),
                                      SizedBox(width: 10),
                                      AppText(
                                        title: "Facebook",
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.white_color,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.registerRoute);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: ConstantStrings.newUserText,
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 15,
                      ),
                      children: [
                        WidgetSpan(
                          child: SizedBox(width: 5),
                        ),
                        TextSpan(
                          text: ConstantStrings.signUpText,
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
