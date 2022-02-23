import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music163/components/HCardWidget/h_card_widget.dart';
import 'package:music163/public/iconfont.dart';
import 'package:music163/public/styles.dart';
import 'package:music163/views/common/SearchBarWidget/search_bar_widget.dart';
import 'package:music163/views/found/banner_menu_widget.dart';
import 'package:music163/views/found/banner_swiper_widget.dart';
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
              Container(
                padding: CommonStyle.basePaddingX,
                child: SearchBarWidget(),
              ),
              const SizedBox(height: CommonStyle.separated),
              const BannerSwiperWidget(),
              const BannerMenuWidget(),
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
              const SizedBox(height: CommonStyle.separated),
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
              const SizedBox(height: CommonStyle.separated),
            ],
          ),
        ),
      ),
    );
  }
}
