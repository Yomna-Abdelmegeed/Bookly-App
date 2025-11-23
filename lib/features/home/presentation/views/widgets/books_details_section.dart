import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/text_button_action.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

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
          child: FeaturedBooksItem(imageURL: NetData.errorImage),
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
          style: StyleOfText.textStyle18.copyWith(
            color: Colors.white.withValues(alpha: 0.7),
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(height: 20),
        BookRating(),
        SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38),
          child: Row(
            children: [
              Expanded(
                  child: TextButtonAction(
                content: '19.99€',
                topLeftRadius: 15,
                bottomRightRadius: 15,
              )),
              Expanded(
                child: TextButtonAction(
                  content: 'Free preview',
                  bottomLeftRadius: 15,
                  topRightRadius: 15,
                  textColor: Colors.white,
                  backgroundColor: Color(0xffEF8262),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
