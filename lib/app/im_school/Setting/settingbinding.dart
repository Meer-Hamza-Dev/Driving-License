import 'package:driving_license/app/im_school/Setting/settingcontroller.dart';
import 'package:get/get.dart';

class Settingbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingController());
  }
}
