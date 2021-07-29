import 'package:pagination_with_notifier/pagination_listview/domain/movie_response.dart';
import 'package:pagination_with_notifier/pagination_listview/infrastructure/api_service.dart';

typedef DataGetter = Future<List<Result>> Function(int page);

class PaginationRepository {
  final ApiService _service;

  PaginationRepository(this._service);

  Future<List<Result>> fetchMovies(String query, int page) async {
    final response = await _service.getMovies(page: page, query: query);
    return response.results;
  }
}
