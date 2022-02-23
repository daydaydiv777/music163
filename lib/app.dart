import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music163/app_controller.dart';
import 'package:music163/views/common/app_drawer.dart';
import 'package:music163/views/common/player_control_bar.dart';
import 'package:music163/views/found/found_screen.dart';
import 'package:music163/views/mine/mine_screen.dart';

const List<Widget> list = [
  FoundScreen(),
  FoundScreen(),
  MineScreen(),
  FoundScreen(),
  FoundScreen(),
];

class App extends GetView<AppController> {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        key: controller.appScaffoldKey,
        body: Stack(
          children: [
            list.elementAt(controller.bottomNavigationIndex.value),
            const Positioned(
              child: PlayerControlBar(),
              bottom: 0,
              left: 0,
              right: 0,
            )
          ],
        ),
        backgroundColor: const Color(0xffEEEEEE),
        drawer: const AppDrawer(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.bottomNavigationIndex.value,
          onTap: (index) {
            controller.bottomNavigationIndex.value = index;
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '发现',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '播客',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '我的',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '关注',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '云村',
            ),
          ],
        ),
      );
    });
  }
}
