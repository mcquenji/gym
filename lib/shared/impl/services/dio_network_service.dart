import 'package:gym/shared/shared.dart';

import 'package:dio/dio.dart';

/// Implements the [NetworkService] using the [Dio] package.
class DioNetworkService extends NetworkService {
  /// The [Dio] client used to send HTTP requests.
  final Dio dio;

  /// Creates a new [DioNetworkService] with the specified [dio] client.
  DioNetworkService(this.dio);

  @override
  Future<HttpResponse<T>> get<T>(String url,
      {Map<String, String>? headers,
      Map<String, String>? queryParameters}) async {
    log.fine("Sending GET request to $url");

    var r = await dio.get(url,
        queryParameters: queryParameters, options: Options(headers: headers));

    log.fine(
        "GET request to $url returned ${r.statusCode} ${r.data.toString()}");

    return HttpResponse(statusCode: r.statusCode, body: r.data);
  }

  @override
  Future<HttpResponse<T>> post<T>(String url,
      {Map<String, String>? headers, body}) async {
    log.fine("Sending POST request to $url");

    var r = await dio.post(url, data: body, options: Options(headers: headers));

    log.fine("POST request to $url returned ${r.statusCode} [data redacted]}");

    return HttpResponse(statusCode: r.statusCode, body: r.data);
  }
}
