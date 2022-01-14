import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  RxInt bottomNavigationIndex = 0.obs;

  ThemeData appThemeData = ThemeData(
    primaryColor: const Color(0xFFC20C0C),
  );
}
