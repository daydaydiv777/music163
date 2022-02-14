import 'package:flutter/material.dart';

const double _defaultHeight = 40;
const double _defaultFontSize = 16;
const Color _defaultEnabledBorderColor = Color(0xFF000000);
const Color _defaultFocusedBorderColor = Color(0xFF000000);

class HTextField extends StatelessWidget {
  final TextStyle? style;
  final double? height;
  final double? borderRadius;
  const HTextField(
      {Key? key, this.style, this.height = _defaultHeight, this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle _style = style ?? const TextStyle(fontSize: _defaultFontSize);
    var textPainter = TextPainter(
      text: TextSpan(
        text: '',
        style: _style,
      ),
      textDirection: TextDirection.ltr,
      textWidthBasis: TextWidthBasis.longestLine,
    )..layout();

    double _height = height ?? _defaultHeight;
    double _borderRadius = borderRadius ?? 0;

    return SizedBox(
      height: height,
      child: TextField(
        style: _style,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.circular(_height / _borderRadius),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.all(
              Radius.circular(_height / _borderRadius),
            ),
          ),

          /// 为确保文字上下居中，所以垂直方向上的值 = (输入框高度 - 文字高度) / 2
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: (_height - textPainter.height) / 2,
          ),
        ),
      ),
    );
  }
}
