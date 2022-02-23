import 'package:flutter/material.dart';

const _defaultHeaderTitleStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
);
const _defaultHeaderSpanStyle = TextStyle(
  fontSize: 14,
);

class HCardWidget extends StatelessWidget {
  final Widget? body;
  final String? headerTitle;
  final Widget? headerTitleIcon;

  final String? headerSpan;
  final Widget? headerSpanPrefixIcon;
  const HCardWidget(
      {Key? key,
      this.body,
      this.headerTitle,
      this.headerTitleIcon,
      this.headerSpan,
      this.headerSpanPrefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _headerLeft = Row(
      children: [
        headerTitleIcon ?? Container(),
        Text(
          headerTitle ?? "",
          style: _defaultHeaderTitleStyle,
        )
      ],
    );

    Widget _headerRight = Container();

    if (headerSpan != null || headerSpanPrefixIcon != null) {
      _headerRight = Container(
        height: 30,
        padding: const EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            headerSpanPrefixIcon ?? Container(),
            const SizedBox(width: 2),
            Text(
              headerSpan ?? "",
              style: _defaultHeaderSpanStyle,
            )
          ],
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _headerLeft,
              _headerRight,
            ],
          ),
          body ?? Container(),
        ],
      ),
    );
  }
}
