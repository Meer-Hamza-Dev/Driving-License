// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:driving_license/app/auth/controller/auth_controller.dart';
import 'package:driving_license/utils/app_buttons/app_buttons.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_constants/const_images.dart';
import 'package:driving_license/utils/app_constants/text_strings.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:driving_license/utils/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return GetBuilder<AuthController>(
      autoRemove: false,
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.white_color,
        body: SafeArea(
          minimum: EdgeInsets.fromLTRB(20, 80, 20, 40),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Column(
                            children: [
                              AppText(
                                title: "Profile",
                                fontWeight: FontWeight.w700,
                                size: 24,
                              ),
                              SizedBox(height: 15),
                              Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Image.asset(
                                    ImageConst.Profile,
                                    height: 120,
                                  ),
                                  Positioned(
                                    right: 10,
                                    child: SvgPicture.asset(
                                      ImageConst.addphoto,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 35),
                        AppText(
                          title: ConstantStrings.FirstNamText,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(height: 10),
                        appField(
                          context: context,
                          hint: ConstantStrings.entrfrstnamText,
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return "Please enter your name";
                          //   }
                          //   return null;
                          // },
                        ),
                        SizedBox(height: 15),
                        AppText(
                          title: ConstantStrings.LastNamText,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(height: 10),
                        appField(
                          context: context,
                          hint: ConstantStrings.EntrlstnmeText,
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return "Please enter your last name";
                          //   }
                          //   return null;
                          // },
                        ),
                        SizedBox(height: 15),
                        AppText(
                          title: ConstantStrings.DatBirthText,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(height: 10),
                        appField(
                          context: context,
                          hint: ConstantStrings.DDMMYYText,
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return "Please enter your DOB";
                          //   }
                          //   return null;
                          // },
                        ),
                        SizedBox(height: 15),
                        AppText(
                          title: ConstantStrings.LicenNoText,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(height: 10),
                        appField(
                          context: context,
                          hint: ConstantStrings.enterlicenText,
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return "Please enter your licence no";
                          //   }
                          //   return null;
                          // },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              AppButton(
                buttonName: ConstantStrings.ContinText,
                onTap: () {
                  controller.goToNextPage();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
