// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:driving_license/routes/app_pages.dart';
import 'package:driving_license/utils/app_bars/main_appbar.dart';
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

class Completed_Course extends StatelessWidget {
  const Completed_Course({super.key});

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
      body: SafeArea(
        minimum: EdgeInsets.all(20),
        child: Column(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
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
                                        color: Colors.green,
                                        size: 13,
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
                    Padding(
                      padding: const EdgeInsets.only(right: 40.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                title: ConstantStrings.progressText,
                                fontWeight: FontWeight.w500,
                                size: 12,
                              ),
                              SizedBox(height: 5),
                              AppText(
                                title: ConstantStrings.lessonText,
                                fontWeight: FontWeight.w400,
                                size: 12,
                                color: AppColors.description_color,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                title: ConstantStrings.StartDate,
                                fontWeight: FontWeight.w500,
                                size: 12,
                              ),
                              SizedBox(height: 5),
                              AppText(
                                title: ConstantStrings.dateText,
                                color: AppColors.description_color,
                                fontWeight: FontWeight.w500,
                                size: 12,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 10,
                      width: 340,
                      decoration: BoxDecoration(
                        color: AppColors.greylightColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            height: 10,
                            width: 260,
                            decoration: BoxDecoration(
                              gradient: AppColors.primaryGradiantColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppButton(
                          buttonName: ConstantStrings.RateNow,
                          isShowGradiant: false,
                          borderColor: AppColors.primaryColor,
                          textColor: AppColors.primaryColor,
                          textSize: 14,
                          buttonWidth: 105,
                          buttonHeight: 36,
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
                                      SizedBox(height: 20),
                                      Container(
                                        // height: 450,
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
                                              20, 48, 20, 48),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                children: [
                                                  SvgPicture.asset(
                                                      ImageConst.carCourse),
                                                  SizedBox(height: 20),
                                                  AppText(
                                                    title: ConstantStrings
                                                        .howCourse,
                                                    fontWeight: FontWeight.w600,
                                                    size: 14,
                                                  ),
                                                  SizedBox(height: 12),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .star_border_rounded,
                                                        size: 16,
                                                        color: AppColors
                                                            .grey_color,
                                                      ),
                                                      SizedBox(width: 4),
                                                      Icon(
                                                        Icons
                                                            .star_border_rounded,
                                                        size: 16,
                                                        color: AppColors
                                                            .grey_color,
                                                      ),
                                                      SizedBox(width: 4),
                                                      Icon(
                                                        Icons
                                                            .star_border_rounded,
                                                        size: 16,
                                                        color: AppColors
                                                            .grey_color,
                                                      ),
                                                      SizedBox(width: 4),
                                                      Icon(
                                                        Icons
                                                            .star_border_rounded,
                                                        size: 16,
                                                        color: AppColors
                                                            .grey_color,
                                                      ),
                                                      SizedBox(width: 4),
                                                      Icon(
                                                        Icons
                                                            .star_border_rounded,
                                                        size: 16,
                                                        color: AppColors
                                                            .grey_color,
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
                                                hint: ConstantStrings
                                                    .TypehereText,
                                                isBorderLine: true,
                                                max: 4,
                                              ),
                                              SizedBox(height: 20),
                                              AppButton(
                                                buttonName:
                                                    ConstantStrings.RateNow,
                                                onTap: () {
                                                  Get.toNamed(
                                                      Routes.schoolinfoRoute);
                                                },
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
                        SizedBox(width: 20),
                        AppButton(
                          buttonName: ConstantStrings.certification,
                          isShowGradiant: false,
                          borderColor: AppColors.primaryColor,
                          textSize: 14,
                          textColor: AppColors.primaryColor,
                          buttonWidth: 115,
                          buttonHeight: 36,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            AppText(
              title: ConstantStrings.drivingText,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 18),
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
                                  SizedBox(width: 3),
                                  AppText(
                                    title: ConstantStrings.T49,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          AppText(
                            title: ConstantStrings.address,
                            color: AppColors.description_color,
                            size: 13,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            AppButton(
              buttonName: ConstantStrings.paymentDetailText,
              isShowGradiant: false,
              borderColor: AppColors.primaryColor,
              textColor: AppColors.primaryColor,
              buttonWidth: 170,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
