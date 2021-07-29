import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pagination_with_notifier/pagination_listview/application/search_paginate_notifier.dart';
import 'package:pagination_with_notifier/pagination_listview/infrastructure/api_service.dart';
import 'package:pagination_with_notifier/pagination_listview/infrastructure/pagination_repository.dart';

final dioProvider = Provider((ref) => Dio());

final apiServiceProvider = Provider(
  (ref) => ApiService(
    ref.watch(dioProvider),
  ),
);

final paginationRepositoryProvider = Provider(
  (ref) => PaginationRepository(
    ref.watch(apiServiceProvider),
  ),
);

final searchNotifierProvider =
    StateNotifierProvider<SearchPaginateNotifier, DataState>(
        (ref) => SearchPaginateNotifier(
              ref.watch(paginationRepositoryProvider),
              ref.read,
            ));

final queryProvider = StateProvider<String>((ref) {
  return "";
});
