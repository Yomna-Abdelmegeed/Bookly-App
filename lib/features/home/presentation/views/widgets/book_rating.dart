import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(width: 6),
        Text(
          '4.8',
          style: StyleOfText.textStyle16,
        ),
        SizedBox(width: 6),
        Text(
          '(2390)',
          style: StyleOfText.textStyle14,
        ),
      ],
    );
  }
}
