import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pagination_with_notifier/pagination_listview/application/search_notifier.dart';
import 'package:pagination_with_notifier/pagination_listview/domain/movie_response.dart';
import 'package:pagination_with_notifier/pagination_listview/infrastructure/api_service.dart';
import 'package:pagination_with_notifier/pagination_listview/shared/provider.dart';

class PaginationSearchPage extends StatefulWidget {
  const PaginationSearchPage({Key? key}) : super(key: key);

  @override
  _PaginationSearchPageState createState() => _PaginationSearchPageState();
}

class _PaginationSearchPageState extends State<PaginationSearchPage> {
  final PagingController<int, Result> _pagingController =
      PagingController(firstPageKey: 1);
  @override
  void initState() {
    super.initState();
    // ApiService(Dio())
    //     .getMovies(page: 1, query: "dc")
    //     .then((value) => print(value.toString()));
    Future.delayed(Duration.zero, () {});
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        _pagingController.addPageRequestListener((pageKey) {
          ref.watch(searchNotifierProvider.notifier).pageRequest(pageKey);
        });
        ref.listen<PaginationState>(searchNotifierProvider, (state) {
          _pagingController.value = PagingState(
              error: state.data.error,
              itemList: state.data.results,
              nextPageKey: state.data.nextPage);
        });
        return Scaffold(
          body: PagedListView<int, Result>(
            pagingController: _pagingController,
            builderDelegate: PagedChildBuilderDelegate<Result>(
              itemBuilder: (context, item, index) => ListTile(
                title: Text(item.name),
              ),
            ),
          ),
        );
      },
    );
  }
}
