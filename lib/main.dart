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
    ),
  );
}
