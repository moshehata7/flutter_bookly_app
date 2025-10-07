import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  Failure(this.message);

  @override
  String toString() => message;
}

class ServerFailure extends Failure {
  ServerFailure([String message = "Server Failure"]) : super(message);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection Timeout with API Server");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send Timeout with API Server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive Timeout with API Server");
      case DioExceptionType.badResponse:
        return ServerFailure(
          "Received invalid status code: ${dioError.response?.statusCode}",
        );
      case DioExceptionType.cancel:
        return ServerFailure("Request to API Server was cancelled");
      case DioExceptionType.connectionError:
        return ServerFailure("No Internet connection");
      default:
        return ServerFailure("Unexpected error occurred: ${dioError.message}");
    }
  }
}

class CacheFailure extends Failure {
  CacheFailure([String message = "Cache Failure"]) : super(message);
}

class AuthFailure extends Failure {
  AuthFailure([String message = "Authentication Failure"]) : super(message);
}

class UnknownFailure extends Failure {
  UnknownFailure([String message = "Unknown Failure"]) : super(message);
}
