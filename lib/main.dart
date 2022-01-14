import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music163/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'application',
      initialRoute: AppPages.INITIAL,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      unknownRoute: AppPages.notFound,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primaryColor: const Color(0xFFC20C0C),
      ),
    ),
  );
}
