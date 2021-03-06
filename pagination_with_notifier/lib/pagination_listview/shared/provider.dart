import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pagination_with_notifier/pagination_listview/application/paginate_notifier.dart';
import 'package:pagination_with_notifier/pagination_listview/application/search_pagination_notifier.dart';
import 'package:pagination_with_notifier/pagination_listview/infrastructure/api_service.dart';
import 'package:pagination_with_notifier/pagination_listview/infrastructure/search_pagination_repository.dart';

final dioProvider = Provider((ref) => Dio());

final apiServiceProvider = Provider(
  (ref) => ApiService(
    ref.watch(dioProvider),
  ),
);

final searchPaginationRepositoryProvider = Provider(
  (ref) => SearchPaginationRepository(
    ref.watch(apiServiceProvider),
  ),
);

final queryProvider = StateProvider<String>((ref) => '');

final searchPaginationNotifierProvider = StateNotifierProvider.autoDispose<
    SearchPaginationNotifier, PaginationState>(
  (ref) => SearchPaginationNotifier(
    ref.watch(searchPaginationRepositoryProvider),
  ),
);
