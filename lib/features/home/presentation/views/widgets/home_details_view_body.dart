import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_details_app_bar.dart';
import 'package:flutter/material.dart';

class HomeDetailsViewBody extends StatelessWidget {
  const HomeDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        HomeDetailsAppBar(),
        SizedBox(height: 24),
        SizedBox(
          height: height * 0.35,
          child: FeaturedBooksItem(),
        ),
      ],
    );
  }
}
