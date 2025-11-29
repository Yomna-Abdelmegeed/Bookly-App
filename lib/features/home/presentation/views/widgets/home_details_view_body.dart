import 'package:bookly_app/features/home/presentation/views/widgets/also_like_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:flutter/material.dart';

class HomeDetailsViewBody extends StatelessWidget {
  const HomeDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              BooksDetailsSection(),
              SizedBox(height: 24),
              AlsoLikeSection(),
            ],
          ),
        )
      ],
    );
  }
}
