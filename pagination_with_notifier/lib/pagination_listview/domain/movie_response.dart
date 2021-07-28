import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_response.g.dart';
part 'movie_response.freezed.dart';

@freezed
class MovieResponse with _$MovieResponse {
  const MovieResponse._();
  const factory MovieResponse({
    required int page,
    required List<Result> results,
    @JsonKey(name: "total_pages") required int totalPages,
    @JsonKey(name: "total_results") required int totalResults,
  }) = _MovieResponse;

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);
}

@freezed
class Result with _$Result {
  const Result._();
  const factory Result({
    required int id,
    @JsonKey(name: "logo_path", defaultValue: "") required String logo,
    required String name,
    @JsonKey(name: "origin_country", defaultValue: "")
        required String originCountry,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
