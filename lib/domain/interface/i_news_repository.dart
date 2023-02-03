import 'package:news_app/domain/news.dart';

abstract class INewsRepository {
  Future<News> getNews();
}
