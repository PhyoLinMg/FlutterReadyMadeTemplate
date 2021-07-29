import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pagination_with_notifier/pagination_listview/infrastructure/pagination_repository.dart';

part 'search_paginate_notifier.freezed.dart';

typedef DataGetter = Future<List<dynamic>> Function(int page);

@freezed
class PaginationState with _$PaginationState {
  const PaginationState._();
  const factory PaginationState.initial() = ;
}

class SearchPaginateNotifier extends StateNotifier<DataState> {
  final PaginationRepository repository;
  final Reader reader;
  SearchPaginateNotifier(this.repository, this.reader)
      : super(DataState(items: []));

  Future<void> getNextPage(DataGetter getter) async {}
}
