import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  final HomeRepo homeRepo;
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());



  Future<void> fetchNewestBooks()async{
    emit(NewestBooksLoading());
    var res=await homeRepo.fetchNewestBooks();
    res.fold((failure) {
      emit(NewestBooksFailure(failure.errmessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }

}


