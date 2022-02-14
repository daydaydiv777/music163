import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music163/routes/app_pages.dart';

class AppDrawer extends GetView {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Drawer(
      child: Container(
        color: Color(0xffEEEEEE),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10),
          children: <Widget>[
            SizedBox(height: statusBarHeight),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 15,
                      child: FlutterLogo(size: 15),
                    ),
                    SizedBox(width: 10),
                    Text('daydaydiv777')
                  ],
                ),
                Icon(Icons.ac_unit),
              ],
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  Get.offAllNamed(Routes.LOGIN);
                },
                child: Center(
                  child: Text(
                    '退出登录',
                    style: TextStyle(
                        fontSize: 16, color: Theme.of(context).primaryColor),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
