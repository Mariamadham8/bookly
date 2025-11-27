//specify what the feature will do

import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../models/book_model.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<BookModel>>>fetchNewestBooks();
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure,List<BookModel>>> fetchSimilarBooks({required String category});
  
}