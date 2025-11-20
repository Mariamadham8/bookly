


import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/networking/api_constants.dart';
import '../../../../core/networking/api_services.dart';
import '../models/book_model.dart';
import 'home_repo.dart';

class HomeRepImplemintation implements HomeRepo {
  final ApiServices apiServices;

  HomeRepImplemintation({required this.apiServices});

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async{

    final res =await apiServices.get(endPoint: NewestBooksEndPoint);
    try{
      List<BookModel> books =[];
      for (var book in res){
        books.add(BookModel.fromJson(book));
      }
      return Right(books);
    }
    catch(e){
      if(e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
        return Left(ServerFailure(e.toString()));
      }
    }


  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    final res =await apiServices.get(endPoint: FeaturedBooksEndPoint);
    try{
      List<BookModel> books =[];
      for (var book in res){
        books.add(BookModel.fromJson(book));
      }
      return Right(books);
    }
    catch(e){
      if(e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure( e.toString()));
    }
  }

}
