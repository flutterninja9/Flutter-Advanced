import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountScreenController extends GetxController {
  var isDark = false.obs;

  changeTheme() {
    isDark.value = !isDark.value;
    isDark.value
        ? Get.changeThemeMode(ThemeMode.light)
        : Get.changeThemeMode(ThemeMode.dark);
  }
}
