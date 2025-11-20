part of 'featrures_books_cubit.dart';

sealed class FeatruresBooksState extends Equatable {
  const FeatruresBooksState();
}

final class FeatruresBooksInitial extends FeatruresBooksState {
  @override
  List<Object> get props => [];
}
final class FeatruresBooksLoading extends FeatruresBooksState {
  @override
  List<Object> get props => [];
}

final class FeatruresBooksSucsess extends FeatruresBooksState {
  final List<BookModel> books;
  const FeatruresBooksSucsess(this.books);

  @override
  List<Object> get props => [books];
}

final class FeatruresBooksFailure extends FeatruresBooksState {
  final String errMassage;
  const FeatruresBooksFailure(this.errMassage);

  @override
  List<Object> get props => [errMassage];
}
