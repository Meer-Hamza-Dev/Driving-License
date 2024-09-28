import 'package:driving_license/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  static SplashController instance = Get.find();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initscreen();
  }

  void initscreen() async {
    await Future.delayed(
      Duration(seconds: 4),
      () {
        Get.toNamed(Routes.onBoardingScreenRoute);
      },
    );
  }
}
