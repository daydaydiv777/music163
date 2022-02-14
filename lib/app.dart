import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music163/app_controller.dart';
import 'package:music163/views/found/found_screen.dart';

const List<Widget> list = [
  FoundScreen(),
  FoundScreen(),
  FoundScreen(),
  FoundScreen(),
  FoundScreen(),
];

class App extends GetView<AppController> {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: Stack(
          children: [
            list.elementAt(controller.bottomNavigationIndex.value),
            Positioned(
                bottom: 10,
                child: GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: const FlutterLogo(),
                ))
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
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
