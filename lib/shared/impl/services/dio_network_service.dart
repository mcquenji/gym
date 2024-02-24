import 'package:gym/shared/shared.dart';

import 'package:dio/dio.dart';

/// Implements the [NetworkService] using the [Dio] package.
class DioNetworkService extends NetworkService {
  /// The [Dio] client used to send HTTP requests.
  final Dio dio;

  /// Creates a new [DioNetworkService] with the specified [dio] client.
  DioNetworkService(this.dio);

  @override
  Future<HttpResponse<T>> get<T>(
    String url, {
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
  }) async {
    log("Sending GET request to $url");

    try {
      var r = await dio.get(url,
          queryParameters: queryParameters, options: Options(headers: headers));

      log("GET request to $url returned with status code ${r.statusCode}: ${r.data.toString().length > 100 ? "[response was truncated due to it's length]" : r.data}");

      return HttpResponse(statusCode: r.statusCode, body: r.data);
    } catch (e) {
      log("GET request to $url failed with error: $e");
      rethrow;
    }
  }

  @override
  Future<HttpResponse<T>> post<T>(
    String url, {
    Map<String, String>? headers,
    body,
  }) async {
    log("Sending POST request to $url");

    try {
      var r =
          await dio.post(url, data: body, options: Options(headers: headers));

      log("POST request to $url returned ${r.statusCode} [data redacted]}");

      return HttpResponse(statusCode: r.statusCode, body: r.data);
    } catch (e) {
      log("POST request to $url failed with error: $e");
      rethrow;
    }
  }
}
