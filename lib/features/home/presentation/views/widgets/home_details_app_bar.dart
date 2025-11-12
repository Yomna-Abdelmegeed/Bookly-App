import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeDetailsAppBar extends StatelessWidget {
  const HomeDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.xmark)),
          IconButton(
              onPressed: () {}, icon: Icon(FontAwesomeIcons.cartShopping)),
        ],
      ),
    );
  }
}
