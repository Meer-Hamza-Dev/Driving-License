import 'package:driving_license/app/im_school/Today%20Classes%20/todayclassescontroller.dart';
import 'package:get/get.dart';

class Todaybinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TodayController());
  }
}
