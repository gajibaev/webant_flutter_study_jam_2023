part of 'news_details_bloc.dart';

@immutable
sealed class NewsDetailsEvent {}

class LoadNewsById extends NewsDetailsEvent {
  final int id;

  LoadNewsById({required this.id});
}

class OpenNewsSourceLink extends NewsDetailsEvent {
  final String link;

  OpenNewsSourceLink({
    required this.link,
  });
}
