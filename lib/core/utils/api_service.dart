import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  final baseUrl= "https://www.googleapis.com/books/v1/";

  ApiService(this.dio);
  Future<dynamic> get({required String endPoint}) async {
    Response response = await dio.get(endPoint);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(
        "there is an error with status code ${response.statusCode}",
      );
    }
  }
}
