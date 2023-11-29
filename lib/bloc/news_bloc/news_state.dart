part of 'news_bloc.dart';

@immutable
sealed class NewsState {}

final class NewsInitialState extends NewsState {}

final class NewsLoadingState extends NewsState {}

final class NewsSuccessState extends NewsState {
  final List<News> news;

  NewsSuccessState({required this.news});
}

final class NewsFailureState extends NewsState {}
