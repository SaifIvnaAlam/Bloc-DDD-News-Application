import 'package:freezed_annotation/freezed_annotation.dart';

part 'articales.freezed.dart';
part 'articales.g.dart';

@freezed
class Articles with _$Articles {
  const factory Articles({
    Map? source,
    String? auther,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? publishedAt,
    String? content,
  }) = _Articles;

  factory Articles.fromJson(Map<String, dynamic> json) =>
      _$ArticlesFromJson(json);
}
