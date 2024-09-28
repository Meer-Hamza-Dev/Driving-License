// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dotted_line/dotted_line.dart';
import 'package:driving_license/utils/bottom_nav_bar/nav_bar_views.dart';
import 'package:driving_license/utils/app_bars/main_appbar.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_constants/const_images.dart';
import 'package:driving_license/utils/app_constants/text_strings.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:flutter/material.dart';

class Student extends StatelessWidget {
  const Student({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: ConstantStrings.studentText,
          size: 16,
        ),
        backgroundColor: AppColors.white_color,
      ),
      backgroundColor: AppColors.white_color,
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(20, 20, 20, 40),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.greylightColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          gradient: AppColors.primaryGradiantColor,
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(35, 15, 35, 15),
                        child: AppText(
                          title: ConstantStrings.actstudentText,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white_color,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.greylightColor,
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(68, 15, 68, 15),
                        child: AppText(
                          title: ConstantStrings.historyText,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              activestudents(),
              SizedBox(
                height: 12,
              ),
              activestudents(),
              SizedBox(
                height: 12,
              ),
              activestudents(),
            ],
          ),
        ),
      ),
    );
  }

  Container activestudents() {
    return Container(
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
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              title: ConstantStrings.upComText,
              color: AppColors.description_color,
              fontWeight: FontWeight.w500,
              size: 12,
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  title: ConstantStrings.timeText,
                  fontWeight: FontWeight.w500,
                  size: 12,
                ),
                AppText(
                    title: ConstantStrings.directionText,
                    size: 11,
                    color: Colors.blue),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            DottedLine(
              direction: Axis.horizontal,
              lineLength: double.infinity,
              lineThickness: 1,
              dashColor: AppColors.grey_color,
            ),
            SizedBox(height: 16),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    ImageConst.avatar,
                    height: 80,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: ConstantStrings.jackText,
                      fontWeight: FontWeight.w600,
                      size: 14,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    AppText(
                      title: ConstantStrings.addressText,
                      size: 12,
                      color: AppColors.description_color,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    AppText(
                        title: r'$350 Paid',
                        size: 11,
                        color: Color(0xff259530)),
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
          ],
        ),
      ),
    );
  }
}
