// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:driving_license/routes/app_pages.dart';
import 'package:driving_license/utils/app_bars/main_appbar.dart';
import 'package:driving_license/utils/app_buttons/app_buttons.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_constants/const_images.dart';
import 'package:driving_license/utils/app_constants/text_strings.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Choose_Payment extends StatelessWidget {
  const Choose_Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: ConstantStrings.choosePaymentText,
        ),
        backgroundColor: AppColors.white_color,
      ),
      backgroundColor: AppColors.white_color,
      body: SafeArea(
        minimum: EdgeInsets.fromLTRB(20, 30, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.white_color,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.grey_color),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withOpacity(0.06),
                        offset: Offset(0, 4),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              title: ConstantStrings.class5,
                              fontWeight: FontWeight.w500,
                              size: 16,
                            ),
                            SizedBox(height: 12),
                            AppText(
                              title: ConstantStrings.Class10,
                            ),
                          ],
                        ),
                        AppText(
                          title: r'$350',
                          fontWeight: FontWeight.w600,
                          size: 20,
                          color: AppColors.primaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                AppText(
                  title: ConstantStrings.savedcards,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.white_color,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.grey_color),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withOpacity(0.06),
                        offset: Offset(0, 4),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 26.0, horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.white_color,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: AppColors.primaryColor,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 16),
                            SvgPicture.asset(
                              ImageConst.wallet,
                              color: AppColors.primaryColor,
                              height: 18,
                              width: 22,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 10),
                            AppText(
                              title: ConstantStrings.xxxx2100,
                              fontWeight: FontWeight.w500,
                              size: 16,
                            ),
                          ],
                        ),
                        Icon(
                          Icons.more_vert,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8),
                AppButton(
                  buttonName: ConstantStrings.AddCard,
                  isShowGradiant: false,
                  textColor: AppColors.primaryColor,
                  borderColor: AppColors.primaryColor,
                  borderWidth: 1.2,
                  icon: Icons.add_circle,
                  iconSize: 23,
                  iconColor: AppColors.primaryColor,
                  onTap: () {},
                  isIcon: true,
                ),
                SizedBox(height: 20),
                AppText(
                  title: ConstantStrings.Otherpaymentoptions,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 18),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.white_color,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: AppColors.grey_color),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            AppText(
                              title: ConstantStrings.stripeText,
                              fontWeight: FontWeight.w500,
                            ),
                            Image.asset(ImageConst.stripe),
                          ],
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            AppButton(
              buttonName: ConstantStrings.Pay$350,
              buttonColor: AppColors.primaryColor,
              textColor: AppColors.white_color,
              onTap: () {
                Get.dialog(
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            color: AppColors.white_color,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(24, 36, 24, 40),
                            child: Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset(ImageConst.circle),
                                    Image.asset(ImageConst.checkBox)
                                  ],
                                ),
                                SizedBox(height: 32),
                                AppText(
                                  title: ConstantStrings.Paymentsuccessful,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w700,
                                  size: 18,
                                
                                ),
                                SizedBox(height: 12),
                                AppText(
                                  title: ConstantStrings.CongratsSuccess,
                                  color: AppColors.description_color,
                                  height: 1.3,
                                  size: 14,
                                  fontWeight: FontWeight.w400,
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 30),
                                AppButton(
                                  buttonName: ConstantStrings.Gotocourses,
                                  buttonColor: AppColors.primaryColor,
                                  textColor: AppColors.white_color,
                                  onTap: () {
                                    Get.toNamed(Routes.myCourseRoute);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
