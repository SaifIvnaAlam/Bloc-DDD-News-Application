// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articales.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Articles _$$_ArticlesFromJson(Map<String, dynamic> json) => _$_Articles(
      source: json['source'] as Map<String, dynamic>?,
      auther: json['auther'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      urlToImage: json['urlToImage'] as String?,
      publishedAt: json['publishedAt'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$_ArticlesToJson(_$_Articles instance) =>
    <String, dynamic>{
      'source': instance.source,
      'auther': instance.auther,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'publishedAt': instance.publishedAt,
      'content': instance.content,
    };
