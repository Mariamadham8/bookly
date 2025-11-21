import 'package:dio/dio.dart';

class ApiServices{
  final Dio dio  ;
   ApiServices(this.dio);

   Future<List<dynamic>> get({required String endPoint,Map<String,dynamic>? query})async{
    Response response=await dio.get(endPoint,queryParameters: query);
    return response.data["items"] as List<dynamic>;
   }

  Future<List<Map<String,dynamic>>> post({required String endPoint,Map<String,dynamic>? data})async{
    Response response=await dio.post(endPoint,data: data);
    return response.data;
   }

}