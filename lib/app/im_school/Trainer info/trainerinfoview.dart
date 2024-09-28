// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dotted_border/dotted_border.dart';
import 'package:driving_license/utils/app_bars/main_appbar.dart';
import 'package:driving_license/utils/app_buttons/app_buttons.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_constants/const_images.dart';
import 'package:driving_license/utils/app_constants/text_strings.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:driving_license/utils/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Trainer_Info extends StatelessWidget {
  const Trainer_Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: ConstantStrings.TrainerinfoText,
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
              AppText(
                title: ConstantStrings.slecttranrlicenseText,
                fontWeight: FontWeight.w600,
                size: 14,
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.white_color,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.grey_color),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        title: ConstantStrings.SelectText,
                        size: 14,
                      ),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              AppText(
                title: ConstantStrings.TrainernameText,
                fontWeight: FontWeight.w600,
                size: 14,
              ),
              SizedBox(
                height: 8,
              ),
              appField(
                context: context,
                hint: ConstantStrings.TypehereText,
              ),
              SizedBox(
                height: 16,
              ),
              AppText(
                title: ConstantStrings.LicensenumText,
                fontWeight: FontWeight.w600,
                size: 14,
              ),
              SizedBox(
                height: 8,
              ),
              appField(
                context: context,
                hint: ConstantStrings.TypehereText,
              ),
              SizedBox(
                height: 16,
              ),
              AppText(
                title: ConstantStrings.TrainerexperText,
                fontWeight: FontWeight.w600,
                size: 14,
              ),
              SizedBox(
                height: 8,
              ),
              appField(
                context: context,
                hint: ConstantStrings.SelectText,
              ),
              SizedBox(
                height: 16,
              ),
              AppText(
                title: ConstantStrings.UplodvhiclImageText,
                fontWeight: FontWeight.w600,
                size: 14,
              ),
              SizedBox(height: 8),
              DottedBorder(
                padding: EdgeInsets.all(12),
                borderType: BorderType.RRect,
                radius: Radius.circular(12),
                color: AppColors.grey_color,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white_color,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32.0),
                    child: Column(
                      children: [
                        SvgPicture.asset(ImageConst.addphoto),
                        SizedBox(
                          height: 15,
                        ),
                        AppText(
                          title: ConstantStrings.uploadimageText,
                          size: 14,
                          color: AppColors.primaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 48,
              ),
              AppButton(
                buttonName: ConstantStrings.SaveText,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
