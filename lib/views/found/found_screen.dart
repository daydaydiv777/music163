import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music163/public/iconfont.dart';
import 'package:music163/views/found/found_controller.dart';

class FoundScreen extends GetView<FoundController> {
  const FoundScreen({Key? key}) : super(key: key);
  final basePaddingX = const EdgeInsets.symmetric(horizontal: 20);
  final baseMarginY = const EdgeInsets.symmetric(vertical: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: basePaddingX,
                margin: baseMarginY,
                height: 40,
                child: Row(
                  children: const [
                    Icon(IconFont.icon_gengduo),
                    SizedBox(width: 20),
                    Expanded(child: Placeholder()),
                    SizedBox(width: 20),
                    Icon(
                      IconFont.icon_search,
                      size: 30,
                    ),
                  ],
                ),
              ),
              Container(
                padding: basePaddingX,
                child: const Placeholder(
                  fallbackHeight: 160,
                ),
              ),
              Container(
                padding: basePaddingX,
                margin: baseMarginY,
                child: const Placeholder(
                  fallbackHeight: 80,
                ),
              ),
              Container(
                padding: basePaddingX,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Placeholder(
                            fallbackWidth: 110,
                          ),
                          Placeholder(
                            fallbackWidth: 40,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: baseMarginY,
                      child: const Placeholder(
                        fallbackHeight: 80,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
