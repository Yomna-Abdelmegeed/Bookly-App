import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/text_button_action.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.book});
  final Item book;
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
          child: FeaturedBooksItem(
              imageURL: book.volumeInfo?.imageLinks?.thumbnail),
        ),
        SizedBox(height: 42),
        SizedBox(
          width: width * 0.86,
          child: Text(
            book.volumeInfo!.title!,
            style: StyleOfText.textStyle30,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 13),
        Text(
          book.volumeInfo!.authors![0],
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
                content: 'Free',
                topLeftRadius: 15,
                bottomRightRadius: 15,
                onPressed: () {},
              )),
              Expanded(
                child: TextButtonAction(
                  content: 'preview',
                  bottomLeftRadius: 15,
                  topRightRadius: 15,
                  textColor: Colors.white,
                  backgroundColor: Color(0xffEF8262),
                  onPressed: () async {
                    Uri uri = Uri.parse(book.volumeInfo!.previewLink!);
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri);
                    } else {
                      throw Exception('Could not launch $uri');
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
