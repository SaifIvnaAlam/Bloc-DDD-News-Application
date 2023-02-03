import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/domain/interface/i_news_repository.dart';

import '../../domain/news.dart';

part 'news_state.dart';
part 'news_cubit.freezed.dart';

class NewsCubit extends Cubit<NewsState> {
  final INewsRepository iNewsRepository;
  NewsCubit(this.iNewsRepository) : super(const NewsState.loading());

  void getNews() async {
    var news = await iNewsRepository.getNews();
    emit(NewsState.loaded(news));
  }
}
