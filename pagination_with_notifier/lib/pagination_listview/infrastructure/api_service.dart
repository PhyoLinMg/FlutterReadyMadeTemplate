import 'package:dio/dio.dart';
import 'package:pagination_with_notifier/pagination_listview/domain/api_key.dart';
import 'package:pagination_with_notifier/pagination_listview/domain/movie_response.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<MovieResponse> getMovies({
    required int page,
    required String query,
  }) async {
    final response = await _dio
        .get('https://api.themoviedb.org/3/search/company', queryParameters: {
      'api_key': apiKey,
      'page': page,
      'query': query,
    });
    print(response);
    return MovieResponse.fromJson(response.data);
  }
}
