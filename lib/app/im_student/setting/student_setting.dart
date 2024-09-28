// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:driving_license/utils/bottom_nav_bar/nav_bar_views.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_constants/const_images.dart';
import 'package:driving_license/utils/app_constants/text_strings.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StudentSetting extends StatelessWidget {
  const StudentSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: StudentBottomNav(),
      backgroundColor: AppColors.white_color,
      body: SafeArea(
        minimum: EdgeInsets.fromLTRB(20, 80, 20, 20),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Image.asset(ImageConst.Profile),
                Positioned(
                  right: 10,
                  child: SvgPicture.asset(
                    ImageConst.addphoto,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            AppText(
              title: ConstantStrings.NbelAkrmText,
              fontWeight: FontWeight.w600,
              size: 18,
            ),
            SizedBox(height: 5),
            AppText(
              title: ConstantStrings.NbelAkrmgmailText,
              fontWeight: FontWeight.w500,
              size: 14,
              color: AppColors.description_color,
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(ImageConst.profileIcon),
                    SizedBox(
                      width: 12,
                    ),
                    AppText(
                      title: ConstantStrings.EditProfileText,
                      size: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                Icon(Icons.keyboard_arrow_right),
              ],
            ),
            SizedBox(height: 21),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(ImageConst.wallet),
                    SizedBox(
                      width: 12,
                    ),
                    AppText(
                      title: ConstantStrings.PymntText,
                      size: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                Icon(Icons.keyboard_arrow_right),
              ],
            ),
            SizedBox(height: 21),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(ImageConst.activity),
                    SizedBox(
                      width: 12,
                    ),
                    AppText(
                      title: ConstantStrings.TrckingText,
                      size: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                Icon(Icons.keyboard_arrow_right),
              ],
            ),
            SizedBox(height: 21),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(ImageConst.Discovery),
                    SizedBox(
                      width: 12,
                    ),
                    AppText(
                      title: ConstantStrings.vehiclesText,
                      size: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                Icon(Icons.keyboard_arrow_right),
              ],
            ),
            SizedBox(height: 21),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(ImageConst.chart),
                    SizedBox(
                      width: 12,
                    ),
                    AppText(
                      title: ConstantStrings.WorkplceText,
                      size: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                Icon(Icons.keyboard_arrow_right),
              ],
            ),
            SizedBox(height: 21),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(ImageConst.loca),
                    SizedBox(
                      width: 12,
                    ),
                    AppText(
                      title: ConstantStrings.LocatinText,
                      size: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                Icon(Icons.keyboard_arrow_right),
              ],
            ),
            SizedBox(height: 21),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(ImageConst.shield),
                    SizedBox(
                      width: 12,
                    ),
                    AppText(
                      title: ConstantStrings.PrvcyPolcyText,
                      size: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                Icon(Icons.keyboard_arrow_right),
              ],
            ),
            SizedBox(
              height: 21,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(ImageConst.message),
                    SizedBox(
                      width: 12,
                    ),
                    AppText(
                      title: ConstantStrings.HelpText,
                      size: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                Icon(Icons.keyboard_arrow_right),
              ],
            ),
            SizedBox(
              height: 21,
            ),
            Row(
              children: [
                SvgPicture.asset(ImageConst.login),
                SizedBox(
                  width: 12,
                ),
                AppText(
                  title: ConstantStrings.LogutText,
                  size: 14,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
