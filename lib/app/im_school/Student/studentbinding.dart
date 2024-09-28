import 'package:driving_license/app/im_school/Student/studentcontroller.dart';
import 'package:get/get.dart';

class Studentbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => StudentController(),
    );
  }
}