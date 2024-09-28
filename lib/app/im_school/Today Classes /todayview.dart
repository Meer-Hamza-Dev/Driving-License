// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:driving_license/routes/app_pages.dart';
import 'package:driving_license/utils/app_bars/main_appbar.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_constants/const_images.dart';
import 'package:driving_license/utils/app_constants/text_strings.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ClassesView extends StatelessWidget {
  const ClassesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: ConstantStrings.classesText,
          size: 16,
        ),
        backgroundColor: AppColors.white_color,
      ),
      backgroundColor: AppColors.white_color,
      body: SafeArea(
        minimum: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  title: ConstantStrings.todyClasText,
                  fontWeight: FontWeight.w600,
                  size: 14,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.white_color,
                    border: Border.all(color: AppColors.black),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                    child: Row(
                      children: [
                        AppText(
                          title: ConstantStrings.todyText,
                          fontWeight: FontWeight.w500,
                          size: 12,
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.calendar_month_outlined,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.jackOdinRoute);
              },
              child: Jackodinclass(),
            ),
            SizedBox(height: 11),
            Jackodinclass(),
            SizedBox(height: 11),
            Jackodinclass(),
            SizedBox(height: 11),
            Jackodinclass(),
          ],
        ),
      ),
    );
  }

  Widget Jackodinclass() {
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
