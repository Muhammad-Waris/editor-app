import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  int selectedIndex = 0;
  changeIndex(int index) {
    selectedIndex = index;
    update();
  }
}
