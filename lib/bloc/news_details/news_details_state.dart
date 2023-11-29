part of 'news_details_bloc.dart';

@immutable
sealed class NewsDetailsState {}

final class NewsDetailsInitialState extends NewsDetailsState {}

final class NewsDetailsLoadingState extends NewsDetailsState {}

final class NewsDetailsSuccessState extends NewsDetailsState {
  final News news;

  NewsDetailsSuccessState({required this.news});
}

final class NewsDetailsFailureState extends NewsDetailsState {}
