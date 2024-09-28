// ignore_for_file: prefer_const_constructors

import 'package:driving_license/routes/app_pages.dart';
import 'package:driving_license/utils/bottom_nav_bar/nav_bar_views.dart';
import 'package:driving_license/app/im_school/vehicle_details/vehicle_details_view.dart';
import 'package:driving_license/utils/app_buttons/app_buttons.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_constants/const_images.dart';
import 'package:driving_license/utils/app_constants/text_strings.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:driving_license/utils/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class StudentHome extends StatelessWidget {
  const StudentHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: StudentBottomNav(),
      backgroundColor: AppColors.white_color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: AppColors.primaryGradiantColor,
              ),
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
                                  title: ConstantStrings.NbelAkrmText,
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
                                      color: AppColors.white_color,
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.white_color,
                            ),
                            child: appField(
                              context: context,
                              isPrefix: true,
                              prefixWidget: Icon(Icons.search),
                              hint: 'Search drivers..',
                              isBorderLine: false,
                              height: 16,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.white_color,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(14),
                            child: SvgPicture.asset(ImageConst.filter),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Image.asset(
                      ImageConst.dsBanner,
                      height: 164,
                      width: 370,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 2,
                          width: 15,
                          decoration: BoxDecoration(
                            color: AppColors.white_color,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        SizedBox(width: 3),
                        Container(
                          height: 2,
                          width: 15,
                          decoration: BoxDecoration(
                            color: AppColors.black,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        SizedBox(width: 3),
                        Container(
                          height: 2,
                          width: 15,
                          decoration: BoxDecoration(
                            color: AppColors.white_color,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    AppText(
                      title: ConstantStrings.findDrivingSchl,
                      size: 26,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white_color,
                    ),
                    SizedBox(height: 12),
                    AppText(
                      title: ConstantStrings.selectLicense,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white_color,
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 51,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: AppText(
                              title: ConstantStrings.class5,
                              fontWeight: FontWeight.w400,
                              size: 14,
                            ),
                            items: [
                              DropdownMenuItem<String>(
                                value: ConstantStrings.class6,
                                child: Column(
                                  children: [
                                    Center(
                                      child: AppText(
                                        title: ConstantStrings.class6,
                                        fontWeight: FontWeight.w400,
                                        size: 14,
                                      ),
                                    ),
                                    Divider(
                                        indent: 60, endIndent: 60, thickness: 1)
                                  ],
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: ConstantStrings.class7,
                                child: Column(
                                  children: [
                                    Center(
                                      child: AppText(
                                        title: ConstantStrings.class7,
                                        fontWeight: FontWeight.w400,
                                        size: 14,
                                      ),
                                    ),
                                    Divider(
                                        indent: 60, endIndent: 60, thickness: 1)
                                  ],
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: ConstantStrings.class8,
                                child: Column(
                                  children: [
                                    Center(
                                      child: AppText(
                                        title: ConstantStrings.class8,
                                        fontWeight: FontWeight.w400,
                                        size: 14,
                                      ),
                                    ),
                                    Divider(
                                        indent: 60, endIndent: 60, thickness: 1)
                                  ],
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: ConstantStrings.class5,
                                child: Column(
                                  children: [
                                    Center(
                                      child: AppText(
                                        title: ConstantStrings.class5,
                                        fontWeight: FontWeight.w400,
                                        size: 14,
                                      ),
                                    ),
                                    Divider(
                                        indent: 60, endIndent: 60, thickness: 1)
                                  ],
                                ),
                              ),
                            ],
                            onChanged: (String? newValue) {},
                            dropdownColor: Colors.white,
                            icon: Icon(Icons.keyboard_arrow_down),
                            iconSize: 30,
                            isExpanded: true,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: ConstantStrings.howManyClas,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white_color,
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 51,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: AppText(title: '10'),
                            ),
                            Icon(Icons.keyboard_arrow_down, size: 30),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: ConstantStrings.price,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white_color,
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 51,
                      decoration: BoxDecoration(
                        color: AppColors.white_color,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            AppText(
                              title: ConstantStrings.perHour,
                              color: AppColors.description_color,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 24, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppButton(
                    buttonName: ConstantStrings.findSchool,
                    fontWeight: FontWeight.w600,
                    onTap: () {
                      Get.toNamed(Routes.selectScheduleRoute);
                    },
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Expanded(
                        child: AppText(
                          title: ConstantStrings.topSchool,
                          size: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      AppText(
                        title: ConstantStrings.viewText,
                        color: AppColors.primaryColor,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 370,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.schoolinfoRoute);
                          },
                          child: TopSchools(),
                        ),
                        SizedBox(width: 20),
                        TopSchools(),
                        SizedBox(width: 20),
                        TopSchools(),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  AppText(
                    title: ConstantStrings.reviews,
                    size: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                  SizedBox(height: 16),
                  SimpsonReviews(),
                  SizedBox(height: 12),
                  SimpsonReviews(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget TopSchools() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white_color,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              color: AppColors.black.withOpacity(.1),
              blurRadius: 16,
              offset: Offset(0, 5)),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.asset(ImageConst.cardImg),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.white_color.withOpacity(.8),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                      child: AppText(
                        title: ConstantStrings.lessons,
                        size: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            AppText(
              title: ConstantStrings.safeDrive,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
            SizedBox(height: 10),
            AppText(
              title: ConstantStrings.address,
              size: 12,
              color: AppColors.description_color,
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.star, size: 18),
                SizedBox(width: 3),
                AppText(title: '4.9'),
                SizedBox(width: 15),
                Icon(Icons.watch_later, size: 18),
                SizedBox(width: 3),
                AppText(title: ConstantStrings.timing),
                SizedBox(width: 15),
                AppText(
                  title: r'$35/H',
                  fontWeight: FontWeight.w600,
                  color: AppColors.secondaryColor,
                ),
              ],
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Stack(
                  children: [
                    Image.asset(ImageConst.Img1),
                    Image.asset(ImageConst.Img3).marginOnly(left: 10),
                    Image.asset(ImageConst.Img2).marginOnly(left: 20),
                  ],
                ),
                SizedBox(width: 9),
                AppText(
                  title: ConstantStrings.plusLearn,
                  size: 12,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(width: 31),
                AppButton(
                  buttonName: ConstantStrings.joinNowText,
                  buttonHeight: 38,
                  buttonWidth: 79,
                  textSize: 12,
                  onTap: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
