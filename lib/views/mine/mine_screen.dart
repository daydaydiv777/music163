import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music163/views/common/SearchBarWidget/search_bar_widget.dart';

BoxDecoration baseBoxDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: baseBorderRadius,
);

BorderRadiusGeometry baseBorderRadius = const BorderRadius.all(
  Radius.circular(4.0),
);

class MineScreen extends GetView {
  const MineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _list = List.filled(8, 0, growable: true);
    return SafeArea(
      child: Column(
        children: [
          SearchBarWidget(),
          Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 120,
                  decoration: baseBoxDecoration,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'daydaydiv777',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xff999999),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('5 关注'),
                            SizedBox(width: 20),
                            Text('5 粉丝'),
                            SizedBox(width: 20),
                            Text('Lv.7'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 40,
                  child: FlutterLogo(
                    size: 40,
                  ),
                ),
              ),
              Container(
                height: 160,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            height: 180,
            decoration: baseBoxDecoration,
            child: Column(
              children: [
                Expanded(
                  child: GridView.count(
                    //水平子Widget之间间距
                    crossAxisSpacing: 10.0,
                    //垂直子Widget之间间距
                    mainAxisSpacing: 30.0,
                    //GridView内边距
                    padding: const EdgeInsets.all(10.0),
                    //一行的Widget数量
                    crossAxisCount: 4,
                    //子Widget宽高比例
                    childAspectRatio: 2.0,
                    physics: NeverScrollableScrollPhysics(),
                    children: List.generate(8, (index) {
                      return Icon(Icons.ac_unit);
                    }).toList(),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(width: 0.5, color: Colors.grey))),
                  height: 60,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: const [
                            CircleAvatar(
                              radius: 15,
                              child: FlutterLogo(
                                size: 20,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text('主播与你灵魂契合度100%'),
                          ],
                        ),
                      ),
                      const Icon(Icons.close),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
