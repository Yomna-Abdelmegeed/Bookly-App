import 'package:bookly_app/features/home/presentation/views/widgets/home_details_app_bar.dart';
import 'package:flutter/material.dart';

class HomeDetailsViewBody extends StatelessWidget {
  const HomeDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeDetailsAppBar(),
        SizedBox(height: 24),
      ],
    );
  }
}
