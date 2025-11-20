import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'featrures_books_state.dart';

class FeatruresBooksCubit extends Cubit<FeatruresBooksState> {
  final HomeRepo homeRepo;
  FeatruresBooksCubit(this.homeRepo) : super(FeatruresBooksInitial());


  Future<void> fetchFeaturedBooks()async{
    emit(FeatruresBooksLoading());
    var res=await homeRepo.fetchFeaturedBooks();
    res.fold((failure) {
      emit(FeatruresBooksFailure(failure.errmessage));
    }, (books) {
      emit(FeatruresBooksSucsess(books));
    });
  }


}
