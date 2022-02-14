import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music163/components/HCardWidget/h_card_widget.dart';
import 'package:music163/components/HTextField/h_text_field.dart';
import 'package:music163/public/iconfont.dart';
import 'package:music163/public/styles.dart';
import 'package:music163/views/found/found_controller.dart';

class FoundScreen extends GetView<FoundController> {
  const FoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// 顶部搜索栏
              const SearchBarWidget(),
              Container(
                padding: CommonStyle.basePaddingX,
                height: 160,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(
                    'https://p1.music.126.net/1e9gv5c_5MRGAKxrTPIcPw==/109951163825727434.jpg?imageView=1&type=webp&thumbnail=1960x0&quality=85&interlace=1',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: CommonStyle.basePaddingX,
                margin: CommonStyle.baseMarginY,
                child: const Placeholder(
                  fallbackHeight: 80,
                ),
              ),
              HCardWidget(
                headerTitle: "推荐歌单",
                headerSpan: "更多",
                headerSpanPrefixIcon:
                    const Icon(IconFont.icon_playfill, size: 16),
                body: Column(
                  children: const [
                    ListTile(
                      title: Text('ListTile with red background'),
                      tileColor: Colors.red,
                      subtitle: Text('1111'),
                    ),
                    ListTile(
                      title: Text('ListTile with red background'),
                      tileColor: Colors.red,
                      subtitle: Text('1111'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              HCardWidget(
                headerTitle: "热门话题",
                body: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: '# ',
                              style: DefaultTextStyle.of(context).style,
                              children: const <TextSpan>[
                                TextSpan(
                                    text: '好家伙，xxxxxxxxx',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          const Text(
                            '20万热度',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: CommonStyle.basePaddingX,
      margin: CommonStyle.baseMarginY,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              print('1111');
              Scaffold.of(context).openDrawer();
            },
            child: Icon(IconFont.icon_gengduo),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: HTextField(
              borderRadius: 0.5,
            ),
          ),
          const SizedBox(width: 20),
          Icon(
            IconFont.icon_search,
            size: 30,
          ),
        ],
      ),
    );
  }
}
