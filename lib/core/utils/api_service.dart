import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  final baseUrl = 'https://www.googleapis.com/books/v1/';

  ApiService(this.dio);
  Future<dynamic> get({required String endPoint}) async {
    Response response = await dio.get("$baseUrl$endPoint");
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(
        "there is an error with status code ${response.statusCode}",
      );
    }
  }
  // Future<dynamic> post({
  //   required String url,
  //   @required dynamic body,
  //   @required String? token,
  // }) async {
  //   final Map<String, dynamic> headers = {};
  //   if (token != null) {
  //     headers.addAll({"authorization": "Bearer  $token"});
  //   }
  //   Response response = await dio.post(
  //     url,
  //     data: body,
  //     options: Options(headers: headers),
  //   );
  //   if (response.statusCode == 200) {
  //     return response.data;
  //   } else {
  //     throw Exception(
  //       "there is an error with status code ${response.statusCode}",
  //     );
  //   }
  // }

  // Future<dynamic> put({
  //   required String url,
  //   @required dynamic body,
  //   @required String? token,
  // }) async {
  //   final Map<String, dynamic> headers = {};
  //   if (token != null) {
  //     headers.addAll({"authorization": "Bearer  $token"});
  //   }
  //   Response response = await dio.put(
  //     url,
  //     data: body,
  //     options: Options(headers: headers),
  //   );
  //   if (response.statusCode == 200) {
  //     return response.data;
  //   } else {
  //     throw Exception(
  //       "there is an error with status code ${response.statusCode}",
  //     );
  //   }
  // }
}
