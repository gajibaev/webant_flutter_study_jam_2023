part of 'news_bloc.dart';

@immutable
sealed class NewsEvent {}

class LoadNewsEvent extends NewsEvent {}
