import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(
          image: AssetImage(AssetsData.logo),
          height: 20,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search_rounded),
        )
      ],
    );
  }
}
