import 'package:pagination_with_notifier/pagination_listview/application/paginate_notifier.dart';
import 'package:pagination_with_notifier/pagination_listview/infrastructure/search_pagination_repository.dart';

class SearchPaginationNotifier extends PagniateNotifier {
  final SearchPaginationRepository _repository;

  SearchPaginationNotifier(this._repository);
}
