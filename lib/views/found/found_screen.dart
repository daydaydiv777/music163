import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music163/views/found/found_controller.dart';

class FoundScreen extends GetView<FoundController> {
  const FoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Found: ${DateTime.now().microsecondsSinceEpoch}'),
    );
  }
}
