import 'package:driving_license/app/im_school/Add%20Vehicle/addvehiclecontroller.dart';
import 'package:get/get.dart';

class Addvehicelbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => AddVehicleController(),
    );
  }
}
