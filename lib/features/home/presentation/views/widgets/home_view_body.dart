import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_item_list.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                CustomAppBar(),
                SizedBox(height: 40),
                FeaturedBooksList(),
                SizedBox(height: 50),
                Text(
                  'Best Seller',
                  style: StyleOfText.textStyle18.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
        ),
        BestSellerItemList(),
      ],
    );
  }
}
