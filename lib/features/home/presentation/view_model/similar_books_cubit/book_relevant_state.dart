part of 'book_relevant_cubit.dart';

sealed class BookRelevantState extends Equatable {
  const BookRelevantState();
}

final class BookRelevantInitial extends BookRelevantState {
  @override
  List<Object> get props => [];
}


final class BookRelevantLoading extends BookRelevantState {
  @override
  List<Object> get props => [];
}

final class BookRelevantFailure extends BookRelevantState {
  final String errorMsg;

  const BookRelevantFailure(this.errorMsg);
  @override
  List<Object> get props => [errorMsg];
}

final class BookRelevantSucsess extends BookRelevantState {
  final List<BookModel> books;

  const BookRelevantSucsess(this.books);

  @override
  List<Object> get props => [books];
}

