import 'package:driving_license/app/im_school/Jack%20Odin/Jackcontroller.dart';
import 'package:get/get.dart';

class Jackbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JackOdinController());
  }
}
