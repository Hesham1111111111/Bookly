import 'package:dio/dio.dart';

class ApiServes {
  final Dio dio;
  final String _buseUrl = "https://www.googleapis.com/";

  ApiServes({required this.dio});

  get({required endpoint, Map<String, dynamic>? query}) async {
    var response = await dio.get("$_buseUrl$endpoint", queryParameters: query);

    return response.data;
  }
}























