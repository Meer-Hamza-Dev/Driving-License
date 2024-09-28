// ignore_for_file: prefer_const_constructors

import 'package:driving_license/routes/app_pages.dart';
import 'package:driving_license/utils/app_bars/main_appbar.dart';
import 'package:driving_license/utils/app_buttons/app_buttons.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_constants/const_images.dart';
import 'package:driving_license/utils/app_constants/text_strings.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SelectSchedule extends StatelessWidget {
  const SelectSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: ConstantStrings.selectSchedule,
          size: 16,
        ),
        backgroundColor: AppColors.white_color,
      ),
      backgroundColor: AppColors.white_color,
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.white_color,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black.withOpacity(.1),
                      blurRadius: 16,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(48),
                        child: Image.asset(
                          ImageConst.center,
                          height: 48,
                          width: 48,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppText(
                                  title: ConstantStrings.abDriving,
                                  fontWeight: FontWeight.w600,
                                  size: 16,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star_rounded,
                                      size: 18,
                                      color: AppColors.primaryColor,
                                    ),
                                    SizedBox(width: 9),
                                    AppText(
                                      title: '4.9',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            AppText(
                              title: ConstantStrings.address,
                              color: AppColors.description_color,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
                          Row(
                            children: [
                              AppText(
                                title: ConstantStrings.classes,
                              ),
                              SizedBox(width: 10),
                              AppText(
                                title: r'$350',
                                size: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(ImageConst.edit),
                          SizedBox(width: 5),
                          AppText(
                            title: 'Edit',
                            size: 16,
                            color: AppColors.primaryColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              AppButton(
                buttonName: ConstantStrings.otherSchool,
                isShowGradiant: false,
                textColor: AppColors.primaryColor,
                borderColor: AppColors.primaryColor,
                borderWidth: 1.3,
                onTap: () {},
              ),
              SizedBox(height: 20),
              AppText(
                title: ConstantStrings.scheduleText,
                size: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: AppText(
                      title: ConstantStrings.mondayText,
                      size: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  AppText(
                    title: 'Skip',
                    size: 16,
                    color: Color(0xff537FF0),
                    decoration: TextDecoration.underline,
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: AppColors.grey_color),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                        child: AppText(
                          title: '09:00 AM',
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.primaryColor,
                        border: Border.all(color: AppColors.transparentColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                        child: AppText(
                          title: '12:00 PM',
                          color: AppColors.white_color,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: AppColors.grey_color),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                        child: AppText(
                          title: '01:00 PM',
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: AppColors.grey_color),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                        child: AppText(
                          title: '09:00 AM',
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.greylightColor,
                        border: Border.all(color: AppColors.transparentColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                        child: AppText(
                          title: '09:00 AM',
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.greylightColor,
                        border: Border.all(color: AppColors.transparentColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                        child: AppText(
                          title: '09:00 AM',
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: AppText(
                      title: 'Tuesday',
                      size: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  AppText(
                    title: 'Skip',
                    decoration: TextDecoration.underline,
                    size: 16,
                    color: Color(0xff537FF0),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.primaryColor,
                        border: Border.all(color: AppColors.transparentColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                        child: AppText(
                          title: '10:00 AM',
                          color: AppColors.white_color,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: AppColors.grey_color),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                        child: AppText(
                          title: '11:00 AM',
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: AppColors.grey_color),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                        child: AppText(
                          title: '12:00 PM',
                          color: AppColors.black,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.greylightColor,
                        border: Border.all(color: AppColors.transparentColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                        child: AppText(
                          title: '01:00 PM',
                          color: AppColors.black,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: AppColors.grey_color),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                        child: AppText(
                          title: '04:00 PM',
                          color: AppColors.black,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: AppColors.grey_color),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                        child: AppText(
                          title: '05:00 PM',
                          color: AppColors.black,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: AppText(
                      title: 'Wednesday',
                      size: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  AppText(
                    title: 'Skip',
                    decoration: TextDecoration.underline,
                    size: 16,
                    color: Color(0xff537FF0),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.primaryColor,
                        border: Border.all(color: AppColors.transparentColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                        child: AppText(
                          title: '10:00 AM',
                          color: AppColors.white_color,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: AppColors.grey_color),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                        child: AppText(
                          title: '11:00 AM',
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: AppColors.grey_color),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                        child: AppText(
                          title: '12:00 PM',
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.greylightColor,
                        border: Border.all(color: AppColors.transparentColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                        child: AppText(
                          title: '01:00 PM',
                          textAlign: TextAlign.center,
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: AppColors.grey_color),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                        child: AppText(
                          title: '04:00 PM',
                          textAlign: TextAlign.center,
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: AppColors.grey_color),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                        child: AppText(
                          title: '05:00 PM',
                          textAlign: TextAlign.center,
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              AppButton(
                buttonName: ConstantStrings.proceedPay,
                textColor: AppColors.white_color,
                onTap: () {
                  Get.toNamed(Routes.choosePaymentRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
