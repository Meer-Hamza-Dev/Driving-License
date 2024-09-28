// ignore_for_file: prefer_const_constructors

import 'package:driving_license/utils/app_bars/main_appbar.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_constants/const_images.dart';
import 'package:driving_license/utils/app_constants/text_strings.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:driving_license/utils/bottom_nav_bar/nav_bar_views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Notification extends StatelessWidget {
  const Notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: StudentBottomNav(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Notifications',
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
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: AppColors.primaryGradiantColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: SvgPicture.asset(ImageConst.paper),
                        ),
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
                                title: ConstantStrings.newLesson,
                                fontWeight: FontWeight.w600,
                                size: 16,
                              ),
                              SizedBox(width: 9),
                              AppText(
                                title: '07:46 AM',
                                fontWeight: FontWeight.w500,
                                color: AppColors.description_color,
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          AppText(
                            title: ConstantStrings.navigating,
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
          ],
        ),
      ),
    );
  }
}
