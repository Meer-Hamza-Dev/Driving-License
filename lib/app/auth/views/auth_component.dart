
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Widget titleText({title, FontWeight? fontWeight}) {
  return AppText(
    title: title,
    color: AppColors.grey_color,
    fontWeight: fontWeight ?? FontWeight.w400,
    size: 13,
  );
}

Widget documentCardWidget(
    {VoidCallback? onTap,
    String imageType = "",
    String imageSelect = "",
    title}) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.grey_color)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              SvgPicture.asset(imageType),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: AppText(
                  title: title,
                  fontWeight: FontWeight.w600,
                  size: 17,
                ),
              ),
              SvgPicture.asset(imageSelect),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget termsAndConditionsLogin() {
  return Text.rich(
    TextSpan(
      text: '${'change me'} ',
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontWeight: FontWeight.w400,
          color: AppColors.grey_color,
          fontSize: 13,
        ),
      ),
      children: <InlineSpan>[
        TextSpan(
          text: 'Terms and condition',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: AppColors.primaryColor),
          ),
        ),
        TextSpan(
          text: ' ${'and'} ',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            fontWeight: FontWeight.w400,
            color: AppColors.grey_color,
            fontSize: 13,
          )),
        ),
        TextSpan(
          text: 'Privacy Policy',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: AppColors.primaryColor),
          ),
        ),
      ],
    ),
  );
}

Widget termsAndConditionsDocuments() {
  return Text.rich(
    TextSpan(
        text: 'By using this service, you agree to',
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColors.grey_color.withOpacity(0.7),
          fontSize: 11,
        )),
        children: <InlineSpan>[
          TextSpan(
              text: " Terms & Conditions, Reward Policy",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: AppColors.black))),
          TextSpan(
            text: ' ${'and'} ',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              color: AppColors.grey_color.withOpacity(0.7),
              fontSize: 12,
            )),
          ),
          TextSpan(
            text: "Privacy Policy",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: AppColors.black)),
          ),
        ]),
    textAlign: TextAlign.center,
  );
}

Widget imagePickerBox(
    {VoidCallback? onTap,
    title,
    subTitle,
    String? filePath,
    VoidCallback? removeImage,
    EdgeInsets? padding,
    Color? backgroundColor,
    double? height,
    bool isShowFile = false}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      // borderType: BorderType.RRect,
      // dashPattern: [8, 6],
      color: AppColors.grey_color,
      // radius: Radius.circular(10),
      padding: padding ?? EdgeInsets.all(filePath == null ? 12 : 0),
      child: Container(
        height: height ?? 200,
        width: Get.width,
        color: backgroundColor,
        child: filePath == null || filePath == ""
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/add_image_ic.svg"),
                  AppText(
                    title: title,
                    fontWeight: FontWeight.w500,
                    size: 15,
                  ),
                  AppText(
                    title: subTitle,
                    fontWeight: FontWeight.w300,
                    size: 12,
                    color: AppColors.grey_color,
                  ),
                ],
              )
            : Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // image: DecorationImage(
                  //   image: isShowFile == false
                  //       ? NetworkImage(filePath)
                  //       : FileImage(
                  //           File(filePath),
                  //         ),
                  //   fit: BoxFit.cover,
                  // ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: removeImage,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              "assets/icons/close_ic.svg",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    ),
  );
}
