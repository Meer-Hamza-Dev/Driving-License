import 'package:driving_license/app/im_school/Vehicles/vehiclescontroller.dart';
import 'package:get/get.dart';

class Todaybinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VehiclesController());
  }
}