import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'book_relevant_state.dart';

class BookRelevantCubit extends Cubit<BookRelevantState> {
  BookRelevantCubit(this.homeRepo) : super(BookRelevantInitial());
  final HomeRepo homeRepo;

  Future<void> fetchRelevantBooks(String category) async {
    emit(BookRelevantLoading());
    var res = await homeRepo.fetchSimilarBooks(category: category);
    res.fold(
      (failure) {
        emit(BookRelevantFailure(failure.errmessage));
      },
      (books) {
        emit(BookRelevantSucsess(books));
      },
    );
  }
}
