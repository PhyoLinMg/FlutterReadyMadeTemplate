import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pagination_with_notifier/pagination_listview/application/search_notifier.dart';
import 'package:pagination_with_notifier/pagination_listview/infrastructure/api_service.dart';
import 'package:pagination_with_notifier/pagination_listview/infrastructure/pagination_repository.dart';

final dioProvider = Provider((ref) => Dio());

final apiServiceProvider = Provider(
  (ref) => ApiService(
    ref.watch(dioProvider),
  ),
);

final searchNotifierProvider =
    StateNotifierProvider<SearchNotifier, PaginationState>(
        (ref) => SearchNotifier(ref.watch(apiServiceProvider)));
