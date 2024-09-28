// ignore_for_file: prefer_const_constructors

import 'package:driving_license/app/im_school/home/home_controller.dart';
import 'package:driving_license/utils/bottom_nav_bar/nav_bar_views.dart';
import 'package:driving_license/routes/app_pages.dart';
import 'package:driving_license/utils/app_buttons/app_buttons.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_constants/const_images.dart';
import 'package:driving_license/utils/app_constants/text_strings.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:driving_license/utils/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(),
      backgroundColor: AppColors.white_color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColors.homeHeaderColor,
              child: SafeArea(
                minimum: EdgeInsets.fromLTRB(20, 70, 20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              ImageConst.driving,
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  title: ConstantStrings.goodMorningText,
                                  color: AppColors.white_color,
                                  size: 12,
                                ),
                                SizedBox(height: 5),
                                AppText(
                                  title: ConstantStrings.drivingText,
                                  color: AppColors.white_color,
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                AppText(
                                  title: ConstantStrings.locationText,
                                  color: AppColors.white_color,
                                  size: 12,
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    AppText(
                                      title: ConstantStrings.lahoreText,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.white_color,
                                      size: 12,
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.location_pin,
                                      size: 17,
                                      color: AppColors.primaryColor,
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColors.grey_color),
                          ),
                          child: appField(
                            context: context,
                            isPrefix: true,
                            prefixWidget: SizedBox(
                              height: 15,
                              child: Image.asset(
                                ImageConst.search,
                              ),
                            ),
                            hint: 'Search',
                            isBorderLine: false,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Get.dialog(
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(28),
                                      color: AppColors.white_color,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          24, 36, 24, 40),
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
                                            title: ConstantStrings.congratsText,
                                            color: AppColors.primaryColor,
                                            fontWeight: FontWeight.w700,
                                            size: 18,
                                          ),
                                          SizedBox(height: 12),
                                          AppText(
                                            title: ConstantStrings.popUpText,
                                            color: AppColors.description_color,
                                            height: 1.3,
                                            size: 14,
                                            fontWeight: FontWeight.w400,
                                            textAlign: TextAlign.center,
                                          ),
                                          SizedBox(height: 30),
                                          AppButton(
                                              buttonName: 'View Class Schedule',
                                              onTap: () {}),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColors.grey_color),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset(ImageConst.filter),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.scheduleRoute);
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                gradient: AppColors.primaryGradiantColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: SvgPicture.asset(ImageConst.dashboard),
                              ),
                            ),
                            SizedBox(height: 7),
                            AppText(
                              title: ConstantStrings.scheduleText,
                              size: 11,
                              color: AppColors.primaryColor,
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.classesRoute);
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xffC1F9C5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: SvgPicture.asset(ImageConst.classes),
                              ),
                            ),
                            SizedBox(height: 7),
                            AppText(
                              title: ConstantStrings.classesText,
                              size: 11,
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.vehicleRoute);
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Color(0xffB0BDFC)),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: SvgPicture.asset(ImageConst.mobile),
                              ),
                            ),
                            SizedBox(height: 7),
                            AppText(
                              title: ConstantStrings.vehiclesText,
                              size: 11,
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.walletViewRoute);
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xffBCBCBC),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: SvgPicture.asset(ImageConst.wallet1),
                              ),
                            ),
                            SizedBox(height: 7),
                            AppText(
                              title: ConstantStrings.walletText,
                              size: 11,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: AppColors.primaryGradiantColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                            child: Column(
                              children: [
                                SvgPicture.asset(ImageConst.honor),
                                SizedBox(height: 5),
                                AppText(
                                  title: '24',
                                  color: AppColors.white_color,
                                  size: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                                AppText(
                                  title: 'Students',
                                  size: 11,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.white_color,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 17.5),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: AppColors.primaryGradiantColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                            child: Column(
                              children: [
                                SvgPicture.asset(ImageConst.graph),
                                SizedBox(height: 5),
                                AppText(
                                  title: '24',
                                  color: AppColors.white_color,
                                  size: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                                AppText(
                                  title: ConstantStrings.classesText,
                                  size: 11,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.white_color,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 17.5),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: AppColors.primaryGradiantColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                            child: Column(
                              children: [
                                SvgPicture.asset(ImageConst.car),
                                SizedBox(height: 5),
                                AppText(
                                  title: '24',
                                  color: AppColors.white_color,
                                  size: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                                AppText(
                                  title: ConstantStrings.vehiclesText,
                                  size: 11,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.white_color,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  AppText(
                    title: ConstantStrings.todyClasText,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 12),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(ImageConst.loc),
                              SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 4),
                                  AppText(
                                    title: ConstantStrings.jackText,
                                    fontWeight: FontWeight.w600,
                                    size: 16,
                                  ),
                                  SizedBox(height: 5),
                                  AppText(
                                    title: ConstantStrings.timeText,
                                    size: 11,
                                    color: AppColors.description_color,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          AppText(
                            title: ConstantStrings.directionText,
                            color: Colors.blue,
                            size: 11,
                            decoration: TextDecoration.underline,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 3,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          color: AppColors.primaryColor,
                        ),
                      ),
                      SizedBox(width: 2),
                      Container(
                        height: 3,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          color: AppColors.grey_color,
                        ),
                      ),
                      SizedBox(width: 2),
                      Container(
                        height: 3,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          color: AppColors.grey_color,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  AppText(
                    title: ConstantStrings.netText,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 15),
                  studentCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget studentCard() {
  final HomeController homeController = Get.put(HomeController());
  return CarouselSlider(
    options: CarouselOptions(
      viewportFraction: 1.0,
      enlargeCenterPage: true,
      enableInfiniteScroll: true,
      height: 336,
      autoPlay: true,
      onPageChanged: (index, reason) {
        homeController.updateIndex(index);
      },
    ),
    items: [1, 2, 3].map((i) {
      return Builder(
        builder: (BuildContext context) {
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.white_color,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black.withOpacity(.10),
                      blurRadius: 16,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              ImageConst.avatar,
                              height: 80,
                            ),
                          ),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                title: ConstantStrings.jackText,
                                fontWeight: FontWeight.w600,
                                size: 14,
                              ),
                              SizedBox(height: 4),
                              AppText(
                                title: ConstantStrings.addressText,
                                size: 12,
                                color: AppColors.description_color,
                              ),
                              SizedBox(height: 4),
                              AppText(
                                title: r'$350 Paid',
                                color: Color(0xff259530),
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            title: 'Class',
                            fontWeight: FontWeight.w500,
                          ),
                          AppText(
                            title: 'Start time',
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            title: '10 Classes',
                            fontWeight: FontWeight.w500,
                          ),
                          AppText(
                            title: ConstantStrings.date,
                            textAlign: TextAlign.left,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Divider(endIndent: 10, indent: 10),
                      SizedBox(height: 14),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: AppButton(
                              buttonName: 'Cancel Booking',
                              onTap: () {},
                              buttonColor: AppColors.transparentColor,
                              isShowGradiant: false,
                              borderColor: AppColors.black,
                              textColor: AppColors.black,
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: AppButton(
                              buttonName: 'Accept Booking',
                              onTap: () {
                                Get.toNamed(Routes.acceptBookRoute);
                              },
                              textColor: AppColors.white_color,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8),
              Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [1, 2, 3].map((i) {
                      int index = [1, 2, 3].indexOf(i);
                      return Container(
                        width: 20,
                        height: 3,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          color: homeController.currentIndex.value == index
                              ? AppColors.primaryColor
                              : AppColors.grey_color,
                        ),
                      );
                    }).toList(),
                  )),
            ],
          );
        },
      );
    }).toList(),
  );
}
