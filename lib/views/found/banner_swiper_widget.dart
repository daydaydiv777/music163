import 'package:flutter/material.dart';
import 'package:music163/public/styles.dart';

class BannerSwiperWidget extends StatelessWidget {
  const BannerSwiperWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: CommonStyle.basePaddingX,
      height: 160,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Image.network(
          'https://p1.music.126.net/1e9gv5c_5MRGAKxrTPIcPw==/109951163825727434.jpg?imageView=1&type=webp&thumbnail=1960x0&quality=85&interlace=1',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
