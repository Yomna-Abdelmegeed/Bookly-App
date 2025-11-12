import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_details_app_bar.dart';
import 'package:flutter/material.dart';

class HomeDetailsViewBody extends StatelessWidget {
  const HomeDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        HomeDetailsAppBar(),
        SizedBox(height: 24),
        SizedBox(
          height: height * 0.35,
          child: FeaturedBooksItem(),
        ),
        SizedBox(height: 42),
        SizedBox(
          width: width * 0.86,
          child: Text(
            'The Jungle Book',
            style: StyleOfText.textStyle30,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 13),
        Text(
          'Rudyard Kipling',
          style: StyleOfText.textStyle18
              .copyWith(color: Colors.white.withValues(alpha: 0.7)),
        ),
        SizedBox(height: 20),
        BookRating(),
      ],
    );
  }
}
