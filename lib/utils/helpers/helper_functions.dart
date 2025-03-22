import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KHelperFunctions {

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }


  // --- Responsive --- //
  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static Orientation screenOrientation() {
    return MediaQuery.of(Get.context!).orientation;
  }
}