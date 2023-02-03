import 'dart:convert';
import 'dart:io';

import 'package:news_app/domain/interface/i_news_repository.dart';
import 'package:news_app/domain/news.dart';
import 'package:http/http.dart' as http;

import '../util/logger.dart';

class NewsRepository extends INewsRepository {
  @override
  Future<News> getNews() async {
    String baseUrl =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=1fdbf3a957d243798ae1815c6ae997f5";

    var response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      logger.e(response.statusCode.toString(), 'Cooking Repository API Error');

      try {
        var data = jsonDecode(response.body);
        var result = News.fromJson(data);
        logger.d('Got News Repository Data', 'API Response(Success)');

        return result;
      } catch (e) {
        logger.e('Data not found!', 'News Repository API Error');
        throw const SocketException('Data not found');
      }
    } else {
      throw const SocketException("Error has occared");
    }
  }
}
