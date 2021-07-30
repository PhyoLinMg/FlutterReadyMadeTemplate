import 'package:pagination_with_notifier/pagination_listview/application/paginate_notifier.dart';
import 'package:pagination_with_notifier/pagination_listview/infrastructure/search_pagination_repository.dart';

class SearchPaginationNotifier extends PagniateNotifier {
  final SearchPaginationRepository _repository;

  SearchPaginationNotifier(this._repository);

  Future<void> getFirstSearchedDataPage(String query) async {
    super.resetState();
    await getNextSearchedDataPage(query);
  }

  Future<void> getNextSearchedDataPage(String query) async {
    super.getNextPage((page) => _repository.getSearchedDataPage(query, page));
  }
}
