import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pagination_with_notifier/pagination_listview/infrastructure/api_service.dart';

class PaginationRepository {
  final PagingController _pagingController;
  final ApiService _service;

  PaginationRepository(this._pagingController, this._service);

  Future<void> fetchPage(pageKey, query) async {
    try {
      final response = await _service.getMovies(page: pageKey, query: query);
      final isLastPage = pageKey < response.totalPages;
      if (isLastPage) {
        _pagingController.appendLastPage(response.results);
      } else {
        final nextPageKey = response.page + 1;
        _pagingController.appendPage(response.results, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }
}
