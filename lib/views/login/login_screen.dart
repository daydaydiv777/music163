import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music163/routes/app_pages.dart';

class LoginScreen extends GetView {
  const LoginScreen({Key? key}) : super(key: key);

  final basePaddingX = const EdgeInsets.symmetric(horizontal: 20);
  final baseMarginB = const EdgeInsets.only(bottom: 20);

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    return Scaffold(
      backgroundColor: _theme.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(child: Center(child: Text('Logo'))),
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: const [
                      Text(
                        '18701715774',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '中国移动提供认证服务',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.four_g_mobiledata_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              padding: basePaddingX,
              margin: baseMarginB,
              child: ElevatedButton(
                onPressed: () {
                  Get.offNamed(Routes.APP);
                },
                child: Center(
                  child: Text(
                    '一键登录',
                    style: TextStyle(color: _theme.primaryColor, fontSize: 16),
                  ),
                ),
                clipBehavior: Clip.antiAlias,
                style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            Container(
              padding: basePaddingX,
              child: DefaultTextStyle(
                style: const TextStyle(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('同意'),
                    SizedBox(width: 10),
                    Text('服务条款'),
                    SizedBox(width: 10),
                    Text('隐私政策'),
                    SizedBox(width: 10),
                    Text('中国移动服务认证协议'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
