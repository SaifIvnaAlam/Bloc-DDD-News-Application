import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/domain/articales.dart';

part 'news.freezed.dart';
part 'news.g.dart';

@freezed
class News with _$News {
  const factory News({
    required String status,
    required int totalResults,
    required List<Articles> articles,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}
