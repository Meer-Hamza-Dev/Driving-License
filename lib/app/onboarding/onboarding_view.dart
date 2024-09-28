import 'package:driving_license/app/onboarding/onboarding_controller.dart';
import 'package:driving_license/utils/app_buttons/app_buttons.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
      autoRemove: true,
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.white_color,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 430,
                        child: PageView.builder(
                          physics: ScrollPhysics(),
                          controller: controller.pageController,
                          onPageChanged: controller.selectedPageIndex,
                          itemCount: controller.onboardingPages.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Center(
                                  child: SvgPicture.asset(
                                    controller
                                        .onboardingPages[index].imageAsset,
                                    height: 280,
                                  ),
                                ),
                                SizedBox(height: 15),
                                AppText(
                                  title:
                                      controller.onboardingPages[index].title,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black,
                                  height: 1.2,
                                  size: 20,
                                ),
                                SizedBox(height: 15),
                                AppText(
                                  title: controller
                                      .onboardingPages[index].description,
                                  textAlign: TextAlign.center,
                                  height: 1.4,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.description_color,
                                  size: 14,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          controller.onboardingPages.length,
                          (index) => Obx(() {
                            return Container(
                              margin: const EdgeInsets.all(2),
                              width: controller.selectedPageIndex.value == index
                                  ? 15
                                  : 10,
                              height: 5,
                              decoration: BoxDecoration(
                                color:
                                    controller.selectedPageIndex.value == index
                                        ? AppColors.primaryColor
                                        : AppColors.grey_color,
                                borderRadius: BorderRadius.circular(
                                  controller.selectedPageIndex.value == index
                                      ? 5
                                      : 5,
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
                Obx(
                  () {
                    return AppButton(
                      buttonName: "Get started",
                      onTap: controller.forwardAction,
                      textColor: controller.isLastPage
                          ? AppColors.white_color
                          : AppColors.white_color,
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
