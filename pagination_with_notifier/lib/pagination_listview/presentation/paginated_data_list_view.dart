import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:pagination_with_notifier/pagination_listview/application/paginate_notifier.dart';
import 'package:pagination_with_notifier/pagination_listview/domain/movie_response.dart';
import 'package:pagination_with_notifier/pagination_listview/presentation/failure_data_tile.dart';
import 'package:pagination_with_notifier/pagination_listview/presentation/loading_result_tile.dart';
import 'package:pagination_with_notifier/pagination_listview/presentation/no_result_display.dart';
import 'package:pagination_with_notifier/pagination_listview/presentation/result_tile.dart';

class PaginatedDataListView extends ConsumerStatefulWidget {
  final AutoDisposeStateNotifierProvider<PagniateNotifier, PaginationState>
      paginatedDataNotifierProvider;
  //if you use v1.0.0 you have to pass widgetref like this
  //like this: final void Function(WidgetRef ref,BuildContext context) getNextPage;
  final void Function(BuildContext context) getNextPage;
  final String noResultsMessage;
  const PaginatedDataListView({
    Key? key,
    required this.paginatedDataNotifierProvider,
    required this.getNextPage,
    required this.noResultsMessage,
  }) : super(key: key);

  @override
  _PaginatedDataListViewState createState() => _PaginatedDataListViewState();
}

class _PaginatedDataListViewState extends ConsumerState<PaginatedDataListView> {
  bool canLoadNextPage = false;
  bool hasAlreadyShownNoConnectionToast = false;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(widget.paginatedDataNotifierProvider);
    return Consumer(
      builder: (context, ref, child) {
        ref.listen<PaginationState>(widget.paginatedDataNotifierProvider,
            (state) {
          state.map(
            initial: (_) => canLoadNextPage = true,
            loadInProgress: (_) => canLoadNextPage = false,
            loadSuccess: (_) {
              if (!hasAlreadyShownNoConnectionToast) {
                hasAlreadyShownNoConnectionToast = true;
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Offline"),
                  duration: Duration(milliseconds: 300),
                ));
              }
              canLoadNextPage = _.isNextPageAvailable;
            },
            loadFailure: (_) => canLoadNextPage = false,
          );
        });
        return NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            final metrics = notification.metrics;
            final limit =
                metrics.maxScrollExtent - metrics.viewportDimension / 3;

            if (canLoadNextPage && metrics.pixels >= limit) {
              canLoadNextPage = false;
              widget.getNextPage(/*ref*/ context);
            }
            return false;
          },
          child: state.maybeWhen(
            loadSuccess: (repos, _) => repos.entity.isEmpty,
            orElse: () => false,
          )
              ? NoResultsDisplay(
                  message: widget.noResultsMessage,
                )
              : _PaginatedListView(state: state),
        );
      },
    );
  }
}

class _PaginatedListView extends StatelessWidget {
  const _PaginatedListView({
    Key? key,
    required this.state,
  }) : super(key: key);

  final PaginationState state;

  @override
  Widget build(BuildContext context) {
    final fsb = FloatingSearchBar.of(context)?.widget;
    return ListView.builder(
      shrinkWrap: true,
      padding: fsb == null
          ? EdgeInsets.zero
          : EdgeInsets.only(
              top: fsb.height + 8 + MediaQuery.of(context).padding.top,
            ),
      itemCount: state.map(
        initial: (_) => 0,
        loadInProgress: (_) => _.results.entity.length + _.itemsPerPage,
        loadSuccess: (_) => _.results.entity.length,
        loadFailure: (_) => _.results.entity.length + 1,
      ),
      itemBuilder: (contex, index) {
        return state.map(
          initial: (_) => ResultTile(result: _.results.entity[index] as Result),
          loadInProgress: (_) {
            if (index < _.results.entity.length) {
              return ResultTile(result: _.results.entity[index] as Result);
            } else {
              return const LoadingResultTile();
            }
          },
          loadSuccess: (_) => ResultTile(
            result: _.results.entity[index],
          ),
          loadFailure: (_) {
            if (index < _.results.entity.length) {
              return ResultTile(result: _.results.entity[index] as Result);
            } else {
              return FailureDataTile(
                exception: _.failure,
              );
            }
          },
        );
      },
    );
  }
}
