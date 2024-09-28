import 'package:driving_license/app/im_school/Accept%20Booking/acceptbookingcontroller.dart';
import 'package:get/get.dart';

class Acceptbookingbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AcceptBookingController());
  }
}
