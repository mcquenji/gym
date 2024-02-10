import 'package:gym/shared/shared.dart';

/// A base class for all network services that provides common HTTP operations.
///
/// Implement this class to create specific network services for your application.
abstract class NetworkService extends Service {
  NetworkService() : super("Network");

  /// Sends a GET request to the specified [url].
  ///
  /// Optionally, you can specify custom [headers] and [queryParameters].
  ///
  /// Returns a [Future] that completes with an [HttpResponse] when the request is complete.
  Future<HttpResponse<T>> get<T>(String url,
      {Map<String, String>? headers, Map<String, String>? queryParameters});

  /// Sends a POST request to the specified [url].
  ///
  /// Optionally, you can specify custom [headers] and a request [body].
  ///
  /// Returns a [Future] that completes with an [HttpResponse] when the request is complete.
  Future<HttpResponse<T>> post<T>(String url,
      {Map<String, String>? headers, dynamic body});
}