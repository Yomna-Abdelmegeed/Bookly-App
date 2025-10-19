import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksList extends StatelessWidget {
  const FeaturedBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.26,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return FeaturedBooksItem();
        },
      ),
    );
  }
}
