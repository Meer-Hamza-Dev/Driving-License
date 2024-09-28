import 'package:get/get.dart';

class ScheduleController extends GetxController {
  var selectedType = 'monday'.obs;

  UpdateSelectedType(Value) {
    selectedType.value = Value;
    update();
  }
}