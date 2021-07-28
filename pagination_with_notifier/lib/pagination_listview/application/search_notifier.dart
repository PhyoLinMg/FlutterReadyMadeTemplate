import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pagination_with_notifier/pagination_listview/domain/movie_response.dart';
import 'package:pagination_with_notifier/pagination_listview/infrastructure/api_service.dart';

part 'search_notifier.freezed.dart';

@freezed
class PaginationState with _$PaginationState {
  const PaginationState._();
  const factory PaginationState({
    required PaginationData data,
    required int pageRequest,
    required String? query,
  }) = _PaginationState;
}

@freezed
class PaginationData with _$PaginationData {
  const PaginationData._();
  const factory PaginationData({
    required List<Result>? results,
    required dynamic error,
    required int nextPage,
  }) = _PaginationData;
}

class SearchNotifier extends StateNotifier<PaginationState> {
  final ApiService _apiService;
  SearchNotifier(this._apiService)
      : super(PaginationState(
            data: PaginationData(results: [], error: "", nextPage: 0),
            pageRequest: 0,
            query: ""));

  pageRequest(pageKey) {
    state = state.copyWith(pageRequest: pageKey);
    print("there is log in pageRequest");
    fetchMovies(pageKey);
  }

  updateQuery(String keyword) {
    state = state.copyWith(query: keyword);
  }

  fetchMovies(int pageKey) async* {
    try {
      final response = await _apiService.getMovies(
        page: pageKey,
        query: "dc",
      );
      final isLastPage = response.totalPages == pageKey;
      final nextPageKey = isLastPage ? null : response.page + 1;

      state = state.copyWith(
          data: PaginationData(
              results: [...state.data.results ?? [], ...response.results],
              error: "",
              nextPage: nextPageKey ?? 0));
    } catch (e) {
      state = state.copyWith(
          data: PaginationData(
              results: state.data.results,
              error: e,
              nextPage: state.data.nextPage));
    }
  }
}
