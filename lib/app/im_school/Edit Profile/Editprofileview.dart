// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:driving_license/utils/app_bars/main_appbar.dart';
import 'package:driving_license/utils/app_buttons/app_buttons.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_constants/const_images.dart';
import 'package:driving_license/utils/app_constants/text_strings.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:driving_license/utils/app_text_field.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: ConstantStrings.EditProfileText,
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
                title: ConstantStrings.schoolText,
                fontWeight: FontWeight.w600,
                size: 14,
              ),
              SizedBox(height: 10),
              appField(
                context: context,
                hint: ConstantStrings.TypehereText,
              ),
              SizedBox(height: 18),
              AppText(
                title: ConstantStrings.passwordText,
                fontWeight: FontWeight.w600,
                size: 14,
              ),
              SizedBox(height: 10),
              appField(
                context: context,
                hint: ConstantStrings.TypehereText,
                suffixWidget: Icon(
                  Icons.remove_red_eye_outlined,
                  color: AppColors.grey_color,
                ),
              ),
              SizedBox(height: 18),
              AppText(
                title: ConstantStrings.RegistNOText,
                fontWeight: FontWeight.w600,
                size: 14,
              ),
              SizedBox(height: 10),
              appField(
                context: context,
                hint: ConstantStrings.TypehereText,
              ),
              SizedBox(height: 18),
              AppText(
                title: ConstantStrings.contackNumText,
                fontWeight: FontWeight.w600,
                size: 14,
              ),
              SizedBox(height: 10),
              appField(
                context: context,
                hint: ConstantStrings.TypehereText,
              ),
              SizedBox(height: 18),
              AppText(
                title: ConstantStrings.offMailText,
                fontWeight: FontWeight.w600,
                size: 14,
              ),
              SizedBox(height: 10),
              appField(
                context: context,
                hint: ConstantStrings.TypehereText,
              ),
              SizedBox(height: 18),
              AppText(
                title: ConstantStrings.logoImgText,
                fontWeight: FontWeight.w600,
                size: 14,
              ),
              SizedBox(height: 10),
              appField(
                context: context,
                hint: ConstantStrings.browseText,
                suffixWidget: SizedBox(
                  height: 25,
                  child: Image.asset(
                    ImageConst.link,
                  ),
                ),
              ),
              SizedBox(height: 55),
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
