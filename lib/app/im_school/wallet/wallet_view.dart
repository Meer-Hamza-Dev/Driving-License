// ignore_for_file: prefer_const_constructors

import 'package:driving_license/utils/bottom_nav_bar/nav_bar_views.dart';
import 'package:driving_license/utils/app_bars/main_appbar.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_constants/const_images.dart';
import 'package:driving_license/utils/app_constants/text_strings.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:flutter/material.dart';

class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Wallet',
        ),
        backgroundColor: AppColors.white_color,
      ),
      backgroundColor: AppColors.white_color,
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        title: ConstantStrings.totalEarnText,
                        fontWeight: FontWeight.w500,
                        color: AppColors.description_color,
                      ),
                      SizedBox(height: 8),
                      AppText(
                        title: ConstantStrings.ammountText,
                        fontWeight: FontWeight.w700,
                        size: 24,
                      ),
                      AppText(
                        title: ConstantStrings.updateTOdyText,
                        color: AppColors.description_color,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: CircularProgressIndicator(
                      backgroundColor: AppColors.grey_color,
                      strokeWidth: 10,
                      valueColor: AlwaysStoppedAnimation(
                        AppColors.primaryColor,
                      ),
                      color: AppColors.black,
                      value: .7,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              AppText(
                title: ConstantStrings.weaklyStatText,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEEF6FF),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 10, 45, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xff007BFF),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(7),
                                child:
                                    Image.asset('assets/images/card (1).png'),
                              ),
                            ),
                            SizedBox(height: 18),
                            AppText(
                              title: '12+',
                              fontWeight: FontWeight.w500,
                              color: Color(0xff007BFF),
                            ),
                            SizedBox(height: 3),
                            AppText(
                              title: r'$1.5k',
                              size: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            AppText(
                              title: 'Orders',
                              fontWeight: FontWeight.w500,
                              color: AppColors.statsColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEFFBF5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 10, 45, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xff37BA78),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(7),
                                child:
                                    Image.asset('assets/images/card (1).png'),
                              ),
                            ),
                            SizedBox(height: 18),
                            AppText(
                              title: '16+',
                              fontWeight: FontWeight.w500,
                              color: Color(0xff007BFF),
                            ),
                            SizedBox(height: 3),
                            AppText(
                              title: r'$2.2k',
                              size: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            AppText(
                              title: 'Earning',
                              fontWeight: FontWeight.w500,
                              color: AppColors.statsColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffF6F7FE),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 10, 45, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xff827EFF),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(7),
                                child:
                                    Image.asset('assets/images/card (1).png'),
                              ),
                            ),
                            SizedBox(height: 18),
                            AppText(
                              title: '25+',
                              fontWeight: FontWeight.w500,
                              color: Color(0xff007BFF),
                            ),
                            SizedBox(height: 3),
                            AppText(
                              title: r'$2.8k',
                              size: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            AppText(
                              title: 'Pending',
                              fontWeight: FontWeight.w500,
                              color: AppColors.statsColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              AppText(
                title: ConstantStrings.dailyStatText,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 20),
              DailyStats(),
              SizedBox(height: 20),
              DailyStats(),
              SizedBox(height: 20),
              DailyStats(),
              SizedBox(height: 20),
              DailyStats(),
            ],
          ),
        ),
      ),
    );
  }

  Widget DailyStats() {
    return Row(
      children: [
        Image.asset(
          ImageConst.Profile,
          height: 50,
          width: 50,
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    title: ConstantStrings.peterText,
                    fontWeight: FontWeight.w500,
                  ),
                  AppText(
                    title: 'Paid',
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
                    title: ConstantStrings.dateText,
                    fontWeight: FontWeight.w400,
                    size: 12,
                    color: Color(0xffA3A3AF),
                  ),
                  AppText(
                    title: r'$25',
                    textAlign: TextAlign.left,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
