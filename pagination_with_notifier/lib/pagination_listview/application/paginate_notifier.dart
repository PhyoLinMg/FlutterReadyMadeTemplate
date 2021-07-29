import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pagination_with_notifier/pagination_listview/domain/movie_response.dart';
import 'package:pagination_with_notifier/pagination_listview/domain/wrapper.dart';

part 'paginate_notifier.freezed.dart';

typedef RepositoryGetter = Future<Either<Exception, Wrapper<List<Result>>>>
    Function(int page);

@freezed
class PaginationState with _$PaginationState {
  const PaginationState._();
  const factory PaginationState.initial(
    Wrapper<List<Result>> results,
  ) = _Initial;

  const factory PaginationState.loadInProgress(Wrapper<List<Result>> results,
      {required int itemsPerPage}) = _LoadInProgress;
  const factory PaginationState.loadSuccess(
    Wrapper<List<Result>> results, {
    required bool isNextPageAvailable,
  }) = _LoadSuccess;
  const factory PaginationState.loadFailure(
    Wrapper<List<Result>> results,
    Exception failure,
  ) = _LoadFailure;
}

class PagniateNotifier extends StateNotifier<PaginationState> {
  PagniateNotifier() : super(PaginationState.initial(Wrapper.get([])));

  int _page = 1;

  @protected
  void resetState() {
    _page = 1;
    state = PaginationState.initial(Wrapper.get([]));
  }

  @protected
  Future<void> getNextPage(RepositoryGetter getter) async {
    state = PaginationState.loadInProgress(
      state.results,
      itemsPerPage: 20,
    );
    final failureOrResults = await getter(_page);
    state = failureOrResults.fold(
      (l) => PaginationState.loadFailure(state.results, l),
      (r) {
        _page++;
        return PaginationState.loadSuccess(
          r.copyWith(entity: [
            ...state.results.entity,
            ...r.entity,
          ]),
          isNextPageAvailable: r.isNextPageAvailable ?? false,
        );
      },
    );
  }
}
