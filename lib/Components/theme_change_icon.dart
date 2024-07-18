import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/theme_controller.dart';

TweenAnimationBuilder<double> themeAnimatedIcon() {
  final ThemeController themeController = Get.find();
  var animationKey = UniqueKey();
  return TweenAnimationBuilder(
    key: animationKey,
    tween: Tween<double>(begin: 10, end: 30),
    duration: const Duration(milliseconds: 400),
    builder: (context, sizeValue, child) => TweenAnimationBuilder(
      key: animationKey,
      tween: Tween<double>(begin: 1, end: 6),
      duration: const Duration(milliseconds: 400),
      builder: (context, value, child) {
        return Transform.rotate(
          angle: value,
          child: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              animationKey = UniqueKey();
              themeController.toggleTheme();
            },
            child: Icon(
              (themeController.isDark.value)
                  ? CupertinoIcons.sun_max_fill
                  : CupertinoIcons.moon,
              color: Theme.of(context).colorScheme.onSurface,
              size: sizeValue,
            ),
          ),
        );
      },
    ),
  );
}
