import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_item.dart';
import 'package:flutter/material.dart';

class SimilarBookList extends StatelessWidget {
  const SimilarBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.13,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 16),
            child: FeaturedBooksItem(),
          );
        },
      ),
    );
  }
}
