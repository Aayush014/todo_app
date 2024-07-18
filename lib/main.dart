import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/Views/home_screen.dart';

import 'Controller/theme_controller.dart';
import 'Theme/dark_theme.dart';
import 'Theme/light_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeController.isDark.value ? darkTheme : lightTheme,
        home: HomeScreen(),
      ),
    );
  }
}
