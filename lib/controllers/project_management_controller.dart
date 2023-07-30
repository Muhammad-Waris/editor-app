import 'package:get/get.dart';

class ProjectManagementController extends GetxController {
  bool currentValue = true;
  int selectedIndex = 0;
  changeIndex(int index) {
    selectedIndex = index;
    update();
  }

  changeValue(bool val) {
    currentValue = val;
    update();
  }
}
