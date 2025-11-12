import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_book_list.dart';
import 'package:flutter/material.dart';

class AlsoLikeSection extends StatelessWidget {
  const AlsoLikeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'You can also like',
            style: StyleOfText.textStyle14.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: 20),
        SimilarBookList(),
        SizedBox(height: 15),
      ],
    );
  }
}
