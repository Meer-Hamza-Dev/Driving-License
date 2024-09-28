// ignore_for_file: prefer_const_constructors

import 'package:driving_license/routes/app_pages.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_constants/const_images.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      decoration: BoxDecoration(
        color: AppColors.white_color,
        boxShadow: const [
          BoxShadow(
            color: Color(0xffE1E1E1),
            blurRadius: 20,
            spreadRadius: 6,
            offset: Offset(0, -2),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              Get.toNamed(Routes.homeRoute);
            },
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    ImageConst.home,
                    color: (Get.currentRoute == Routes.homeRoute)
                        ? AppColors.primaryColor
                        : AppColors.black,
                  ),
                  SizedBox(height: 7),
                  AppText(
                    title: 'Home',
                    size: 13,
                    color: (Get.currentRoute == Routes.homeRoute)
                        ? AppColors.primaryColor
                        : AppColors.black,
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.studentRoute);
            },
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    ImageConst.student,
                    color: (Get.currentRoute == Routes.studentRoute)
                        ? AppColors.primaryColor
                        : AppColors.black,
                  ),
                  SizedBox(height: 7),
                  AppText(
                    title: 'Student',
                    size: 13,
                    color: (Get.currentRoute == Routes.studentRoute)
                        ? AppColors.primaryColor
                        : AppColors.black,
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.walletViewRoute);
            },
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    ImageConst.wallet,
                    color: (Get.currentRoute == Routes.walletViewRoute)
                        ? AppColors.primaryColor
                        : AppColors.black,
                  ),
                  SizedBox(height: 7),
                  AppText(
                    title: 'Wallet',
                    size: 13,
                    color: (Get.currentRoute == Routes.walletViewRoute)
                        ? AppColors.primaryColor
                        : AppColors.black,
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.settingRoute);
            },
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    ImageConst.setting,
                    color: (Get.currentRoute == Routes.settingRoute)
                        ? AppColors.primaryColor
                        : AppColors.black,
                  ),
                  SizedBox(height: 7),
                  AppText(
                    title: 'Settings',
                    size: 13,
                    color: (Get.currentRoute == Routes.settingRoute)
                        ? AppColors.primaryColor
                        : AppColors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StudentBottomNav extends StatelessWidget {
  const StudentBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      decoration: BoxDecoration(
        color: AppColors.white_color,
        boxShadow: const [
          BoxShadow(
            color: Color(0xffE1E1E1),
            blurRadius: 20,
            spreadRadius: 6,
            offset: Offset(0, -2),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              Get.toNamed(Routes.studentHomeRoute);
            },
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    ImageConst.home,
                    color: (Get.currentRoute == Routes.studentHomeRoute)
                        ? AppColors.primaryColor
                        : AppColors.black,
                  ),
                  SizedBox(height: 7),
                  AppText(
                    title: 'Home',
                    size: 13,
                    color: (Get.currentRoute == Routes.studentHomeRoute)
                        ? AppColors.primaryColor
                        : AppColors.black,
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.myCourseRoute);
            },
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    ImageConst.discovery,
                    color: (Get.currentRoute == Routes.myCourseRoute)
                        ? AppColors.primaryColor
                        : AppColors.black,
                  ),
                  SizedBox(height: 7),
                  AppText(
                    title: 'My Courses',
                    size: 13,
                    color: (Get.currentRoute == Routes.myCourseRoute)
                        ? AppColors.primaryColor
                        : AppColors.black,
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.notificationRoute);
            },
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    ImageConst.notification,
                    color: (Get.currentRoute == Routes.notificationRoute)
                        ? AppColors.primaryColor
                        : AppColors.black,
                  ),
                  SizedBox(height: 7),
                  AppText(
                    title: 'Alerts',
                    size: 13,
                    color: (Get.currentRoute == Routes.notificationRoute)
                        ? AppColors.primaryColor
                        : AppColors.black,
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.studentSettingRoute);
            },
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    ImageConst.setting,
                    color: (Get.currentRoute == Routes.studentSettingRoute)
                        ? AppColors.primaryColor
                        : AppColors.black,
                  ),
                  SizedBox(height: 7),
                  AppText(
                    title: 'Settings',
                    size: 13,
                    color: (Get.currentRoute == Routes.studentSettingRoute)
                        ? AppColors.primaryColor
                        : AppColors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
