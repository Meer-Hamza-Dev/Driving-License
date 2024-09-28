// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:driving_license/utils/app_bars/main_appbar.dart';
import 'package:driving_license/utils/app_buttons/app_buttons.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_constants/const_images.dart';
import 'package:driving_license/utils/app_constants/text_strings.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:driving_license/utils/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ClassCourse extends StatelessWidget {
  const ClassCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: ConstantStrings.class5Text,
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
                          height: 50,
                          width: 50,
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
                                  title: ConstantStrings.AbDrivingschool,
                                  fontWeight: FontWeight.w600,
                                  size: 16,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star_rounded,
                                      size: 22,
                                      color: AppColors.primaryColor,
                                    ),
                                    SizedBox(width: 5),
                                    AppText(title: ConstantStrings.T49),
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
              SizedBox(height: 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: AppButton(
                      buttonName: ConstantStrings.scheduleText,
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: 25),
                  Expanded(
                    child: AppButton(
                      buttonName: ConstantStrings.paymentDetailText,
                      isShowGradiant: false,
                      borderColor: AppColors.primaryColor,
                      textColor: AppColors.primaryColor,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              AppText(
                title: ConstantStrings.MyClasses,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 16),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(ImageConst.loc),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AppText(
                                      title: ConstantStrings.class5,
                                      fontWeight: FontWeight.w600,
                                      size: 16,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.done,
                                          size: 13,
                                          color: Colors.green,
                                        ),
                                        AppText(
                                          title: ConstantStrings.Complete,
                                          color: Colors.green,
                                          size: 11,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                AppText(
                                  title: ConstantStrings.timeText,
                                  size: 10,
                                  color: AppColors.description_color,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      AppButton(
                        buttonName: ConstantStrings.RateNow,
                        isShowGradiant: false,
                        borderColor: AppColors.primaryColor,
                        textColor: AppColors.primaryColor,
                        buttonWidth: 110,
                        buttonHeight: 38,
                        onTap: () {
                          Get.bottomSheet(
                            Container(
                              height: Get.height * .9,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColors.transparentColor,
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child: Container(
                                        height: 48,
                                        width: 48,
                                        decoration: BoxDecoration(
                                            color: AppColors.white_color
                                                .withOpacity(0.4),
                                            borderRadius:
                                                BorderRadius.circular(48)),
                                        child: Center(
                                          child: Icon(
                                            Icons.close,
                                            size: 26,
                                            color: AppColors.white_color,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 30),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: AppColors.white_color,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(16),
                                          topLeft: Radius.circular(16),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 48, 20, 23),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              children: [
                                                AppText(
                                                  title: ConstantStrings
                                                      .Ratetrainer,
                                                  fontWeight: FontWeight.w600,
                                                  size: 14,
                                                ),
                                                SizedBox(height: 12),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.star_border_rounded,
                                                      size: 16,
                                                      color:
                                                          AppColors.grey_color,
                                                    ),
                                                    SizedBox(width: 4),
                                                    Icon(
                                                      Icons.star_border_rounded,
                                                      size: 16,
                                                      color:
                                                          AppColors.grey_color,
                                                    ),
                                                    SizedBox(width: 4),
                                                    Icon(
                                                      Icons.star_border_rounded,
                                                      size: 16,
                                                      color:
                                                          AppColors.grey_color,
                                                    ),
                                                    SizedBox(width: 4),
                                                    Icon(
                                                      Icons.star_border_rounded,
                                                      size: 16,
                                                      color:
                                                          AppColors.grey_color,
                                                    ),
                                                    SizedBox(width: 4),
                                                    Icon(
                                                      Icons.star_border_rounded,
                                                      size: 16,
                                                      color:
                                                          AppColors.grey_color,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 20),
                                                AppText(
                                                  title: ConstantStrings
                                                      .Overallsatisfaction,
                                                  fontWeight: FontWeight.w600,
                                                  size: 14,
                                                ),
                                                SizedBox(height: 12),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.star_border_rounded,
                                                      size: 16,
                                                      color:
                                                          AppColors.grey_color,
                                                    ),
                                                    SizedBox(width: 4),
                                                    Icon(
                                                      Icons.star_border_rounded,
                                                      size: 16,
                                                      color:
                                                          AppColors.grey_color,
                                                    ),
                                                    SizedBox(width: 4),
                                                    Icon(
                                                      Icons.star_border_rounded,
                                                      size: 16,
                                                      color:
                                                          AppColors.grey_color,
                                                    ),
                                                    SizedBox(width: 4),
                                                    Icon(
                                                      Icons.star_border_rounded,
                                                      size: 16,
                                                      color:
                                                          AppColors.grey_color,
                                                    ),
                                                    SizedBox(width: 4),
                                                    Icon(
                                                      Icons.star_border_rounded,
                                                      size: 16,
                                                      color:
                                                          AppColors.grey_color,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 20),
                                            AppText(
                                              title:
                                                  ConstantStrings.WriteReview,
                                              fontWeight: FontWeight.w600,
                                              size: 14,
                                            ),
                                            SizedBox(height: 8),
                                            appField(
                                              context: context,
                                              hint:
                                                  ConstantStrings.TypehereText,
                                              isBorderLine: true,
                                              max: 4,
                                            ),
                                            SizedBox(height: 20),
                                            AppButton(
                                              buttonName:
                                                  ConstantStrings.RateNow,
                                              onTap: () {},
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      height: Get.height * .4,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.transparentColor,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                    color:
                                        AppColors.white_color.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(48)),
                                child: Center(
                                  child: Icon(
                                    Icons.close,
                                    size: 26,
                                    color: AppColors.white_color,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColors.white_color,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  topLeft: Radius.circular(16),
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 48, 20, 23),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppText(
                                      title: ConstantStrings.changeSchool,
                                      fontWeight: FontWeight.w600,
                                      size: 14,
                                    ),
                                    SizedBox(height: 8),
                                    appField(
                                      context: context,
                                      hint: ConstantStrings.TypehereText,
                                      isBorderLine: true,
                                      max: 4,
                                    ),
                                    SizedBox(height: 20),
                                    AppButton(
                                      buttonName: ConstantStrings.requestChange,
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: Center(
                  child: AppText(
                    title: ConstantStrings.ChangeSchool,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 16),
              jackOdin(),
              SizedBox(height: 11),
              jackOdin(),
              SizedBox(height: 11),
              jackOdin(),
              SizedBox(height: 66),
            ],
          ),
        ),
      ),
    );
  }

  Container jackOdin() {
    return Container(
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(ImageConst.loc),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 4),
                    AppText(
                      title: ConstantStrings.class5,
                      fontWeight: FontWeight.w600,
                      size: 16,
                    ),
                    SizedBox(height: 5),
                    AppText(
                      title: ConstantStrings.timeText,
                      size: 10,
                      color: AppColors.description_color,
                    ),
                  ],
                ),
              ],
            ),
            AppText(
              title: 'Upcoming',
              color: Colors.blue,
              size: 11,
            ),
          ],
        ),
      ),
    );
  }
}
