part of 'news_cubit.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.loading() = _loading;
  const factory NewsState.loaded(News news) = _loaded;
  const factory NewsState.error() = _error;
}
