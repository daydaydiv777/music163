import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  late ScrollController controller;

  final List<int> data = List.generate(60, (index) => index + 1);

  @override
  void initState() {
    super.initState();
    controller = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> children =
        data.map((index) => ItemBox(index: index)).toList();

    return Scaffold(
      body: SafeArea(
        child: Scrollable(
          controller: controller,
          viewportBuilder: _builderViewport,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.animateTo(-100.0,
              duration: const Duration(milliseconds: 300), curve: Curves.ease);
        },
        child: const Text('Top'),
      ),
    );
  }

  Widget _builderViewport(BuildContext context, ViewportOffset position) {
    return Viewport(
      offset: position,
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            _buildItemByIndex,
            childCount: data.length,
          ),
        )
      ],
    );
  }

  Widget _buildItemByIndex(BuildContext context, int index) {
    return ItemBox(
      index: data[index],
    );
  }
}

class ItemBox extends StatelessWidget {
  final int index;
  const ItemBox({Key? key, required this.index}) : super(key: key);

  Color get color => Colors.blue.withOpacity((index % 10) * 0.1);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: color,
      height: 56,
      child: Text(
        '第 $index 个',
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
