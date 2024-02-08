import 'package:dio/dio.dart';
import 'package:gym/shared/impl/impl.dart';
import 'package:gym/shared/shared.dart';
import 'package:riverpod/riverpod.dart';

final networkServiceProvider = Provider<NetworkService>((ref) {
  return DioNetworkService(Dio());
});
