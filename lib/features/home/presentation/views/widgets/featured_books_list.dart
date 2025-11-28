import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../views_model/featured_books_cubit/featured_books_cubit.dart';

class FeaturedBooksList extends StatelessWidget {
  const FeaturedBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          List<Item> books = state.books;
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.26,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: FeaturedBooksItem(
                      imageURL: books[index].volumeInfo?.imageLinks?.thumbnail),
                );
              },
            ),
          );
        }
        if (state is FeaturedBooksFailure) {
          return Text(state.errMessage);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
