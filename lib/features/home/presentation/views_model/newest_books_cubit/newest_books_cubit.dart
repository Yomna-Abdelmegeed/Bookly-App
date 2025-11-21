import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubitCubit extends Cubit<NewestBooksState> {
  NewestBooksCubitCubit() : super(NewestBooksInitial());
}
