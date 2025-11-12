import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class TextButtonAction extends StatelessWidget {
  const TextButtonAction({
    super.key,
    required this.content,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.topLeftRadius = 0,
    this.bottomRightRadius = 0,
    this.topRightRadius = 0,
    this.bottomLeftRadius = 0,
  });

  final Color textColor;
  final Color backgroundColor;
  final double topLeftRadius;
  final double bottomRightRadius;
  final double topRightRadius;
  final double bottomLeftRadius;
  final String content;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 30),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeftRadius),
            bottomRight: Radius.circular(bottomRightRadius),
            topRight: Radius.circular(topRightRadius),
            bottomLeft: Radius.circular(bottomLeftRadius),
          ),
        ),
      ),
      child: Text(
        content,
        style: StyleOfText.textStyle16.copyWith(
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
