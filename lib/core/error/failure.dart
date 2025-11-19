import 'package:dio/dio.dart';

abstract class Failure {


}

class ServerFailure extends Failure {
  final String? message;

  ServerFailure({this.message});

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        return ServerFailure(message: "Request to API server was cancelled");

      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: "Connection timeout with API server");

      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: "Receive timeout in connection with API server");

      case DioExceptionType.sendTimeout:
        return ServerFailure(message: "Send timeout in connection with API server");

      case DioExceptionType.badCertificate:
        return ServerFailure(message: "Bad certificate from server");

      case DioExceptionType.badResponse:
        return ServerFailure.fromStatusCode(dioError.response?.statusCode ??0);

      case DioExceptionType.connectionError:
        return ServerFailure(
          message: "Connection failed. Check your internet connection",
        );

      case DioExceptionType.unknown:
      default:
        return ServerFailure(message: "Something went wrong");
    }
  }

  factory ServerFailure.fromStatusCode(int statusCode) {
    switch (statusCode) {
      case 400:
        return ServerFailure(message: "Bad request");

      case 401:
        return ServerFailure(message: "Unauthorized request");

      case 403:
        return ServerFailure(message: "Forbidden request");

      case 404:
        return ServerFailure(message: "Request not found");

      case 500:
        return ServerFailure(message: "Internal server error");

      case 502:
        return ServerFailure(message: "Bad gateway");

      case 503:
        return ServerFailure(message: "Service unavailable");

      case 504:
        return ServerFailure(message: "Gateway timeout");

      default:
        return ServerFailure(
            message: "Received invalid status code: $statusCode");
    }
  }
}

class CacheFailure extends Failure {

}
class OfflineFailure extends Failure {

}
class UnknownFailure extends Failure {

}
class ApiFailure extends Failure {

}
class ValidationFailure extends Failure {

}
class AuthenticationFailure extends Failure {

}
class PermissionFailure extends Failure {

}
class NotFoundFailure extends Failure {

}
class TimeoutFailure extends Failure {

}
class ConflictFailure extends Failure {

}
class RateLimitFailure extends Failure {

}