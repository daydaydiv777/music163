import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends SuperController {
  final GlobalKey<ScaffoldState> appScaffoldKey = GlobalKey<ScaffoldState>();
  RxInt bottomNavigationIndex = 0.obs;

  ThemeData appThemeData = ThemeData(
    primaryColor: const Color(0xFFC20C0C),
  );

  openDrawer() {
    appScaffoldKey.currentState?.openDrawer();
  }

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
