import 'package:bookely/core/network/endpoint.dart';
import 'package:dio/dio.dart';

class ApiServes {
  final Dio dio;

  ApiServes({required this.dio});

  Future get({required endpoint, Map<String, dynamic>? query}) async {
    var response = await dio.get("${AppEndPoints.buseUrl}$endpoint", queryParameters: query);

    return response.data;
  }
}