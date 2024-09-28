import 'package:driving_license/app/im_school/schedule/scheduleController.dart';
import 'package:get/get.dart';

class Timeslotbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScheduleController());
  }
}
