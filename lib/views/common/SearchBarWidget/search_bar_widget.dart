import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music163/app_controller.dart';
import 'package:music163/components/HTextField/h_text_field.dart';
import 'package:music163/public/iconfont.dart';

class SearchBarWidget extends StatelessWidget {
  final AppController _appController = Get.find<AppController>();
  SearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: _appController.openDrawer,
          child: const Icon(IconFont.icon_gengduo),
        ),
        const SizedBox(width: 20),
        const Expanded(
          child: HTextField(
            borderRadius: 0.5,
          ),
        ),
        const SizedBox(width: 20),
        const Icon(
          IconFont.icon_search,
          size: 30,
        ),
      ],
    );
  }
}
