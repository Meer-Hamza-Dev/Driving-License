import 'package:get/get.dart';

class Mycoursecontroller extends GetxController{

var selectedValuetype = "ongoing".obs;
updateValueType(Val){
  selectedValuetype.value = Val;
  update();
}

}