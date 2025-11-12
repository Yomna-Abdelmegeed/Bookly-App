import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class FeaturedBooksItem extends StatelessWidget {
  const FeaturedBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(
                AssetsData.testImage,
              ),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}
