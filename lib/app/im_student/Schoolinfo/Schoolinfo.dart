// ignore_for_file: prefer_const_constructors

import 'package:driving_license/utils/app_buttons/app_buttons.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_constants/const_images.dart';
import 'package:driving_license/utils/app_constants/text_strings.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Schoolinfo extends StatelessWidget {
  const Schoolinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white_color,
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    ImageConst.center,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 62,
                    left: 16,
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset(ImageConst.backBtn),
                    ),
                  ),
                ],
              ),
            ],
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.7,
            minChildSize: 0.7,
            maxChildSize: .8,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: AppColors.white_color,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            AppText(
                              title: ConstantStrings.Safedrive,
                              fontWeight: FontWeight.w600,
                              size: 16,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        AppText(
                          title: ConstantStrings.address,
                          color: AppColors.description_color,
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: AppColors.primaryColor,
                            ),
                            SizedBox(width: 5),
                            AppText(
                              title: '4.9',
                            ),
                            SizedBox(width: 15),
                            Icon(
                              Icons.watch_later,
                              color: AppColors.primaryColor,
                            ),
                            SizedBox(width: 5),
                            AppText(
                              title: '10hr, 30mins',
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            SizedBox(
                              width: 40,
                              child: Stack(
                                children: [
                                  Image.asset(ImageConst.Img1),
                                  Positioned(
                                    left: 10,
                                    child: Image.asset(ImageConst.Img2),
                                  ),
                                  Positioned(
                                    left: 20,
                                    child: Image.asset(ImageConst.Img3),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            AppText(
                              title: ConstantStrings.plusLearn,
                              size: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Divider(
                          indent: 25,
                          endIndent: 25,
                        ),
                        SizedBox(height: 31),
                        Row(
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
                                      title: ConstantStrings.MichaelCarter,
                                      fontWeight: FontWeight.w600,
                                      size: 16,
                                    ),
                                    SizedBox(height: 5),
                                    AppText(
                                      title: ConstantStrings.ChiefDrivingCoach,
                                      size: 11,
                                      color: AppColors.description_color,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            AppText(
                              title: ConstantStrings.$35Hour,
                              fontWeight: FontWeight.w600,
                              color: AppColors.secondaryColor,
                              size: 14,
                            ),
                          ],
                        ),
                        SizedBox(height: 21),
                        AppText(
                          title: ConstantStrings.SchoolDescription,
                          size: 12.5,
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 70),
                        AppButton(
                          buttonName: ConstantStrings.RateNow,
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
