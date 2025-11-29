import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_item.dart';
import 'package:bookly_app/features/home/presentation/views_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookList extends StatelessWidget {
  const SimilarBookList({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          List<Item> books = state.books;
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.13,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: FeaturedBooksItem(
                      imageURL: books[index].volumeInfo?.imageLinks?.thumbnail),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return Text(state.errMessage);
        } else {
          return Center(
              child: SizedBox(
            child: CircularProgressIndicator(),
          ));
        }
      },
    );
  }
}
