// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:driving_license/utils/app_bars/main_appbar.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_constants/const_images.dart';
import 'package:driving_license/utils/app_constants/text_strings.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class JackOdin extends StatelessWidget {
  const JackOdin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: ConstantStrings.jackText,
          size: 16,
        ),
        backgroundColor: AppColors.white_color,
      ),
      backgroundColor: AppColors.white_color,
      body: SafeArea(
        minimum: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            jackOdin(),
            SizedBox(
              height: 20,
            ),
            AppText(
              title: ConstantStrings.courseInfoText,
              fontWeight: FontWeight.w600,
              size: 14,
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
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
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  title: ConstantStrings.progressText,
                  fontWeight: FontWeight.w500,
                  size: 12,
                ),
                AppText(
                  title: ConstantStrings.compltDateText,
                  fontWeight: FontWeight.w500,
                  size: 12,
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  title: ConstantStrings.lessonText,
                  fontWeight: FontWeight.w400,
                  size: 12,
                  color: AppColors.description_color,
                ),
                AppText(
                  title: ConstantStrings.timeText,
                  color: AppColors.description_color,
                  fontWeight: FontWeight.w500,
                  size: 12,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
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
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  title: ConstantStrings.upComText,
                  fontWeight: FontWeight.w600,
                  size: 14,
                ),
                AppText(
                  title: ConstantStrings.viewText,
                  fontWeight: FontWeight.w400,
                  size: 12,
                  color: AppColors.primaryColor,
                ),
              ],
            ),
            SizedBox(height: 16),
            jackOdin(),
            SizedBox(height: 11),
            jackOdin(),
            SizedBox(height: 11),
            jackOdin(),
            SizedBox(height: 66),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 170,
                  decoration: BoxDecoration(
                    color: AppColors.white_color,
                    border: Border.all(color: AppColors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.transparentColor,
                      shadowColor: AppColors.transparentColor,
                    ),
                    child: Center(
                      child: AppText(
                        title: ConstantStrings.needHelpText,
                        fontWeight: FontWeight.w500,
                        size: 14,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 170,
                  decoration: BoxDecoration(
                    gradient: AppColors.primaryGradiantColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.transparentColor,
                      shadowColor: AppColors.transparentColor,
                    ),
                    child: Center(
                      child: AppText(
                        title: ConstantStrings.rateStudText,
                        color: AppColors.white_color,
                        fontWeight: FontWeight.w500,
                        size: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
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
                      title: ConstantStrings.jackText,
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
              title: ConstantStrings.directionText,
              color: Colors.blue,
              size: 11,
            ),
          ],
        ),
      ),
    );
  }
}
