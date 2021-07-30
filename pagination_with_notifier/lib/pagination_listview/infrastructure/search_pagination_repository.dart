import 'package:dartz/dartz.dart';
import 'package:pagination_with_notifier/pagination_listview/domain/movie_response.dart';
import 'package:pagination_with_notifier/pagination_listview/domain/wrapper.dart';
import 'package:pagination_with_notifier/pagination_listview/infrastructure/api_service.dart';

class SearchPaginationRepository {
  final ApiService _service;

  SearchPaginationRepository(this._service);

  Future<Either<Exception, Wrapper<List<Result>>>> getSearchedDataPage(
      String query, int page) async {
    try {
      final items = await _service.getMovies(query: query, page: page);
      return right(
        items.maybeWhen(
          withNewData: (data, maxPage) =>
              Wrapper.get(data.results, isNextPageAvailable: page < maxPage),
          orElse: () => Wrapper.get([], isNextPageAvailable: false),
        ),
      );
    } on Exception catch (e) {
      return left(e);
    }
  }
}
