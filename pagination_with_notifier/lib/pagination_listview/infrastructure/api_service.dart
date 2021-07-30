import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pagination_with_notifier/pagination_listview/domain/api_key.dart';
import 'package:pagination_with_notifier/pagination_listview/domain/movie_response.dart';
import 'package:pagination_with_notifier/pagination_listview/domain/remote_response.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<RemoteResponse<MovieResponse>> getMovies({
    required int page,
    required String query,
  }) async {
    try {
      final response = await _dio
          .get('https://api.themoviedb.org/3/search/company', queryParameters: {
        'api_key': apiKey,
        'page': page,
        'query': query,
      });
      print(response);
      return RemoteResponse.withNewData(MovieResponse.fromJson(response.data),
          maxPage: MovieResponse.fromJson(response.data).totalPages);
    } on SocketException catch (e) {
      return const RemoteResponse.noConnection();
    }
  }
}
