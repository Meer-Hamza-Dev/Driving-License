import 'package:driving_license/app/im_school/Edit%20Profile/editprofilecontroller.dart';
import 'package:get/get.dart';

class Editprofilebinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditProfilesController());
  }
}
