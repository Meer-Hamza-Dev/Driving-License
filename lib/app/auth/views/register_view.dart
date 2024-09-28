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
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    // bool isEmailValid(String email) {
    //   return RegExp(r'^[\w-\.]+@[a-zA-Z]+\.[a-zA-Z]{2,}$').hasMatch(email);
    // }

    return GetBuilder<AuthController>(
      autoRemove: true,
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.white_color,
        body: SafeArea(
          minimum: EdgeInsets.fromLTRB(20, 80, 20, 20),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      AppText(
                        title: ConstantStrings.registerText,
                        size: 24,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(height: 30),
                      Obx(() {
                        return Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  controller.updateSelectedType('student');
                                  controller.selectStudent();
                                },
                                child: Container(
                                  decoration: controller.selectedType.value ==
                                          'student'
                                      ? BoxDecoration(
                                          gradient:
                                              AppColors.primaryGradiantColor,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        )
                                      : BoxDecoration(
                                          color: AppColors.transparentColor,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: AppColors.grey_color,
                                          ),
                                        ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 20, 10, 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: AppColors.white_color,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                color: controller.selectedType
                                                            .value ==
                                                        'school'
                                                    ? AppColors.grey_color
                                                    : AppColors
                                                        .transparentColor,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(2.5),
                                              child: Icon(
                                                Icons.done,
                                                color: controller.selectedType
                                                            .value ==
                                                        'school'
                                                    ? AppColors.transparentColor
                                                    : AppColors.primaryColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        RichText(
                                          text: TextSpan(
                                            text: 'I am a \n',
                                            style: TextStyle(
                                              color: controller
                                                          .selectedType.value ==
                                                      'student'
                                                  ? AppColors.white_color
                                                  : AppColors.black,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: 'Student',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5,
                                                  color: controller.selectedType
                                                              .value ==
                                                          'student'
                                                      ? AppColors.white_color
                                                      : AppColors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  controller.updateSelectedType('school');
                                  controller.selectSchool();
                                },
                                child: Container(
                                  decoration: controller.selectedType.value ==
                                          'school'
                                      ? BoxDecoration(
                                          gradient:
                                              AppColors.primaryGradiantColor,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        )
                                      : BoxDecoration(
                                          color: AppColors.transparentColor,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: AppColors.grey_color,
                                          ),
                                        ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 20, 10, 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: AppColors.white_color,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                  color: controller.selectedType
                                                              .value ==
                                                          'school'
                                                      ? AppColors
                                                          .transparentColor
                                                      : AppColors.grey_color,
                                                )),
                                            child: Padding(
                                              padding: EdgeInsets.all(2.5),
                                              child: Icon(
                                                Icons.done,
                                                color: controller.selectedType
                                                            .value ==
                                                        'school'
                                                    ? AppColors.primaryColor
                                                    : AppColors
                                                        .transparentColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        RichText(
                                          text: TextSpan(
                                            text: 'I am a \n',
                                            style: TextStyle(
                                              color: controller
                                                          .selectedType.value ==
                                                      'school'
                                                  ? AppColors.white_color
                                                  : AppColors.black,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: 'School',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5,
                                                  color: controller.selectedType
                                                              .value ==
                                                          'school'
                                                      ? AppColors.white_color
                                                      : AppColors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                      SizedBox(height: 35),
                      Form(
                        key: formKey,
                        child: Column(
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
                            appField(
                              context: context,
                              hint: ConstantStrings.passwordHintText,
                              isSuffix: true,
                              suffixWidget: IconButton(
                                onPressed: () {
                                  // controller.togglePasswordVisibility();
                                },
                                icon: Icon(
                                  // controller.isPasswordHidden.value
                                  // ? Icons.visibility_off
                                  Icons.visibility,
                                ),
                              ),
                              // obscure: controller.isPasswordHidden.value,
                              // controller: controller.confirmController,
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
                            ),
                            SizedBox(height: 15),
                            AppText(
                              title: ConstantStrings.conPassText,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(height: 8),
                            appField(
                              context: context,
                              hint: ConstantStrings.passwordHintText,
                              suffixWidget: IconButton(
                                onPressed: () {
                                  // controller.togglePasswordVisibility();
                                },
                                icon: Icon(
                                  // controller.isPasswordHidden.value
                                  // ? Icons.visibility_off
                                  Icons.visibility,
                                ),
                              ),
                              // obscure: controller.isPasswordHidden.value,
                              // validator: (value) {
                              //   if (value!.isEmpty) {}
                              //   if (value.length < 6) {
                              //     return "Passowrd must contain at least 6 characters";
                              //   } else if (value !=
                              //       controller.confirmController.text) {
                              //     return "password not match";
                              //   }
                              //   return null;
                              // },
                            ),
                            SizedBox(height: 20),
                            AppButton(
                              buttonName: ConstantStrings.createAccText,
                              onTap: () {
                                Get.toNamed(Routes.verificationRoute);
                                // if (formKey.currentState!.validate()) {
                                // }
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      AppText(
                        title: ConstantStrings.createbymailText,
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.grey_color),
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
                          SizedBox(width: 15),
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
                                      title: ConstantStrings.facebookText,
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
                  Get.toNamed(Routes.loginViewRoute);
                },
                child: RichText(
                  text: TextSpan(
                    text: ConstantStrings.alrdyAccText,
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 15,
                    ),
                    children: [
                      WidgetSpan(
                        child: SizedBox(width: 5),
                      ),
                      TextSpan(
                        text: ConstantStrings.loginText,
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
