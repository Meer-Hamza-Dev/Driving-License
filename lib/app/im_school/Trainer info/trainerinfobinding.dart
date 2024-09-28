import 'package:driving_license/app/im_school/Trainer%20info/trainerinfocontroller.dart';
import 'package:get/get.dart';

class Trainerinfobinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => TrainerInfoController(),
    );
  }
}
