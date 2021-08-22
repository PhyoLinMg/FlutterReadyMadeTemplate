import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pagination_with_notifier/pagination_listview/presentation/paginated_data_list_view.dart';
import 'package:pagination_with_notifier/pagination_listview/shared/provider.dart';

class PaginationSearchPage extends ConsumerStatefulWidget {
  const PaginationSearchPage({Key? key}) : super(key: key);

  @override
  _PaginationSearchPageState createState() => _PaginationSearchPageState();
}

class _PaginationSearchPageState extends ConsumerState<PaginationSearchPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            onChanged: (value) {
              ref.read(queryProvider).state = value;
              Future.microtask(
                () => ref
                    .read(searchPaginationNotifierProvider.notifier)
                    .getFirstSearchedDataPage(value),
              );
            },
          ),
          Expanded(
            child: PaginatedDataListView(
              paginatedDataNotifierProvider: searchPaginationNotifierProvider,
              getNextPage: (/*ref*/ context) {
                ref
                    .read(searchPaginationNotifierProvider.notifier)
                    .getNextSearchedDataPage(ref.read(queryProvider).state);
              },
              noResultsMessage:
                  "This is all we could find for your search term. Really...",
            ),
          ),
        ],
      ),
    );
  }
}
