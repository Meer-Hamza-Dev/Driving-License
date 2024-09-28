// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:driving_license/utils/app_bars/main_appbar.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_constants/const_images.dart';
import 'package:driving_license/utils/app_constants/text_strings.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AcceptBooking extends StatelessWidget {
  const AcceptBooking({super.key});

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
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Image.asset(
                        ImageConst.Profile,
                        height: 48,
                        width: 48,
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
                                  title: ConstantStrings.jackText,
                                  fontWeight: FontWeight.w600,
                                  size: 16,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.done,
                                      color: Color(0xff259530),
                                      size: 13,
                                    ),
                                    AppText(
                                      title: r'$350',
                                      size: 12,
                                      color: Color(0xff259530),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            AppText(
                              title: ConstantStrings.addressText,
                              size: 14,
                              color: AppColors.description_color,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 36),
              Container(
                height: 52,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white_color,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: AppColors.primaryColor,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shadowColor: AppColors.transparentColor,
                      backgroundColor: AppColors.transparentColor),
                  child: AppText(
                    title: ConstantStrings.paymentDetailText,
                    fontWeight: FontWeight.w500,
                    size: 14,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: ConstantStrings.classScheText,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: '(10 classes)',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: AppColors.description_color,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Booking(),
              SizedBox(
                height: 16,
              ),
              Booking(),
              SizedBox(
                height: 16,
              ),
              Booking(),
              SizedBox(
                height: 16,
              ),
              Booking(),
              SizedBox(
                height: 16,
              ),
              Booking(),
            ],
          ),
        ),
      ),
    );
  }

  Container Booking() {
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
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 4),
                    AppText(
                      title: 'Class-1',
                      fontWeight: FontWeight.w600,
                      size: 16,
                    ),
                    SizedBox(height: 12),
                    AppText(
                      title: '12:00 PM, 23-07-2024',
                      size: 11,
                      color: AppColors.description_color,
                    ),
                  ],
                ),
              ],
            ),
            AppText(
              title: 'Upcomming',
              color: Colors.blue,
              size: 11,
            ),
          ],
        ),
      ),
    );
  }
}
