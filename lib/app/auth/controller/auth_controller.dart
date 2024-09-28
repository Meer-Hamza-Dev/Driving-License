import 'package:driving_license/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var selectedType = 'student'.obs;

  updateSelectedType(Value) {
    selectedType.value = Value;
    update();
  }

  var isSchoolSelected = false.obs;

  void selectSchool() {
    isSchoolSelected.value = true;
  }

  void selectStudent() {
    isSchoolSelected.value = false;
  }

  void goToNextPage() {
    if (isSchoolSelected.value) {
      Get.toNamed(Routes.homeRoute);
    } else {
      Get.toNamed(Routes.studentHomeRoute);
    }
  }

  var confirmController = TextEditingController();

  var isPasswordHidden = true.obs;

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }
}
