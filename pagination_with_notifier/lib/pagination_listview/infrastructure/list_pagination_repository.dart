import 'package:dartz/dartz.dart';
import 'package:pagination_with_notifier/pagination_listview/domain/movie_response.dart';
import 'package:pagination_with_notifier/pagination_listview/domain/wrapper.dart';
import 'package:pagination_with_notifier/pagination_listview/infrastructure/api_service.dart';

class ListPaginationRepository {
  final ApiService _service;

  ListPaginationRepository(this._service);

  // Future<Either<Exception,Wrapper<List<Result>>>> getData(int page) async{
  //   final lists=
  // }
}
