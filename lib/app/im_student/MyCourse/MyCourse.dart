// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:driving_license/app/im_student/MyCourse/MyCoursecontroller.dart';
import 'package:driving_license/routes/app_pages.dart';
import 'package:driving_license/utils/app_bars/main_appbar.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_constants/const_images.dart';
import 'package:driving_license/utils/app_constants/text_strings.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:driving_license/utils/bottom_nav_bar/nav_bar_views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class My_Course extends StatelessWidget {
  My_Course({super.key});
  final Mycoursecontroller controller = Mycoursecontroller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: StudentBottomNav(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: ConstantStrings.MyCourse,
        ),
        backgroundColor: AppColors.white_color,
      ),
      backgroundColor: AppColors.white_color,
      body: SafeArea(
        minimum: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.greylightColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Obx(() {
                return Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          controller.updateValueType("ongoing");
                        },
                        child: Container(
                          decoration:
                              controller.selectedValuetype.value == "ongoing"
                                  ? BoxDecoration(
                                      gradient: AppColors.primaryGradiantColor,
                                      borderRadius: BorderRadius.circular(12),
                                    )
                                  : BoxDecoration(
                                      color: AppColors.transparentColor,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(55, 12, 54, 12),
                            child: AppText(
                              title: ConstantStrings.Ongoing,
                              fontWeight: FontWeight.w500,
                              color: controller.selectedValuetype.value ==
                                      "ongoing"
                                  ? AppColors.white_color
                                  : AppColors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          controller.updateValueType("complete");
                        },
                        child: Container(
                          decoration:
                              controller.selectedValuetype.value == "complete"
                                  ? BoxDecoration(
                                      gradient: AppColors.primaryGradiantColor,
                                      borderRadius: BorderRadius.circular(12),
                                    )
                                  : BoxDecoration(
                                      color: AppColors.transparentColor,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(55, 12, 54, 12),
                            child: AppText(
                              title: ConstantStrings.Complete,
                              fontWeight: FontWeight.w500,
                              color: controller.selectedValuetype.value ==
                                      "complete"
                                  ? AppColors.white_color
                                  : AppColors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
            SizedBox(height: 20),
            Obx(() {
              return Column(
                children: [
                  controller.selectedValuetype.value == "ongoing"
                      ? class5()
                      : controller.selectedValuetype.value == "complete"
                          ? GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.completeCourseRoute);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.greylightColor,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.black.withOpacity(0.1),
                                      blurRadius: 16,
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            child: Image.asset(
                                              ImageConst.center,
                                              height: 100,
                                              width: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    AppText(
                                                      title: ConstantStrings
                                                          .class5,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      size: 14,
                                                    ),
                                                    AppText(
                                                      title: ConstantStrings
                                                          .$350Paid,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      size: 14,
                                                      color: Colors.green,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 11,
                                                ),
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                        ImageConst.Img1),
                                                    SizedBox(width: 10),
                                                    AppText(
                                                      title: ConstantStrings
                                                          .AbDrivingschool,
                                                      size: 12,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : class5(),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }

  GestureDetector class5() {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.classCourseRoute);
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white_color,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.1),
              blurRadius: 16,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      ImageConst.center,
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText(
                                title: ConstantStrings.class5,
                                fontWeight: FontWeight.w600,
                              ),
                              AppText(
                                title: ConstantStrings.$35Hour,
                                fontWeight: FontWeight.w600,
                                color: AppColors.secondaryColor,
                              ),
                            ],
                          ),
                          SizedBox(height: 11),
                          Row(
                            children: [
                              Image.asset(
                                ImageConst.Profile,
                                height: 35,
                              ),
                              SizedBox(width: 10),
                              AppText(
                                title: ConstantStrings.AbDrivingschool,
                                size: 13,
                              ),
                            ],
                          ),
                        ],
                      ),
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
            ],
          ),
        ),
      ),
    );
  }
}
