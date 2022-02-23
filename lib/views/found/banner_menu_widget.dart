import 'package:flutter/material.dart';

class BannerMenuWidget extends StatelessWidget {
  const BannerMenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.2, color: Colors.grey),
        ),
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        return ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 22,
          itemBuilder: (context, index) {
            // separated 内部只能判断 index.isEven，我们要确保第一个是间隔
            return const SizedBox(width: 20);
          },
          separatorBuilder: (BuildContext context, int index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [const Icon(Icons.ac_unit), Text('menu $index')],
            );
          },
        );
      }),
    );
  }
}
