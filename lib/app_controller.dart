import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends SuperController {
  RxInt bottomNavigationIndex = 0.obs;

  ThemeData appThemeData = ThemeData(
    primaryColor: const Color(0xFFC20C0C),
  );

  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
  }
}
