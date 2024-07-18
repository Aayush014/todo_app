import 'package:get/get.dart';

import '../Theme/dark_theme.dart';
import '../Theme/light_theme.dart';

class ThemeController extends GetxController {
  var isDark = false.obs;

  void toggleTheme() {
    isDark.value = !isDark.value;
    Get.changeTheme(isDark.value ? darkTheme : lightTheme);
  }
}