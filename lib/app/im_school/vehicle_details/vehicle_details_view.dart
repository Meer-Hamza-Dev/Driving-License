// ignore_for_file: prefer_const_constructors

import 'package:driving_license/routes/app_pages.dart';
import 'package:driving_license/utils/app_buttons/app_buttons.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_constants/const_images.dart';
import 'package:driving_license/utils/app_constants/text_strings.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class VehicleDetailsView extends StatelessWidget {
  const VehicleDetailsView({super.key});

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
                    ImageConst.drivingImg,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 62,
                    left: 16,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: SvgPicture.asset(ImageConst.backBtn),
                        ),
                        SizedBox(width: 95),
                        AppText(
                          title: 'Hyundai Elantra',
                          size: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                              title: ConstantStrings.cardheadingText,
                              fontWeight: FontWeight.w600,
                              size: 16,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_purple500_outlined,
                                  color: AppColors.primaryColor,
                                ),
                                SizedBox(width: 3),
                                AppText(
                                  title: '4.9',
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text.rich(
                          TextSpan(
                            text: ConstantStrings.cardspan1Text,
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: AppColors.description_color,
                              ),
                            ),
                            children: [
                              TextSpan(
                                text: ConstantStrings.cardspan2Text,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.watch_later,
                                  color: AppColors.primaryColor,
                                ),
                                SizedBox(width: 3),
                                AppText(
                                  title: '10hr, 30mins',
                                ),
                              ],
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
                              title: '250+ People Trained',
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
                        SizedBox(height: 10),
                        AppText(
                          title: ConstantStrings.description,
                          size: 12.5,
                        ),
                        SizedBox(height: 12),
                        AppText(
                          title: 'Reviews',
                          size: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(height: 16),
                        SimpsonReviews(),
                        SizedBox(height: 12),
                        SimpsonReviews(),
                        SizedBox(height: 50),
                        AppButton(
                          buttonName: 'Edit',
                          onTap: () {
                            Get.toNamed(Routes.timeSlotRoute);
                          },
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

Widget SimpsonReviews() {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.white_color,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: AppColors.black.withOpacity(.1),
          blurRadius: 16,
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(11),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(ImageConst.driverDp),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      title: 'Simpson',
                      size: 13,
                      fontWeight: FontWeight.w600,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xff259530),
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xff259530),
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xff259530),
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xff259530),
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          size: 18,
                          color: AppColors.grey_color,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                AppText(
                  title: ConstantStrings.simpsonText,
                  size: 10.5,
                  color: AppColors.description_color,
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
