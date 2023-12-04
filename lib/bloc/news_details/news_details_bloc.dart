import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:webant_flutter_study_jam_2023/models/news.dart';
import 'package:webant_flutter_study_jam_2023/services/news_service.dart';

part 'news_details_event.dart';
part 'news_details_state.dart';

class NewsDetailsBloc extends Bloc<NewsDetailsEvent, NewsDetailsState> {
  NewsDetailsBloc({
    required this.newsService,
  }) : super(NewsDetailsInitialState()) {
    on<LoadNewsById>(_onNewsDetailsEvent);
    on<OpenNewsSourceLink>(_onOpenSourceSiteLink);
  }

  final NewsService newsService;

  Future<void> _onNewsDetailsEvent(
    LoadNewsById event,
    Emitter<NewsDetailsState> emit,
  ) async {
    emit(NewsDetailsLoadingState());

    final newsResponse = await newsService.fetchArticleById(event.id);

    final news = newsResponse.toNewsModel();

    emit(
      NewsDetailsSuccessState(news: news),
    );
  }

  Future<void> _onOpenSourceSiteLink(
    OpenNewsSourceLink event,
    Emitter<NewsDetailsState> emit,
  ) async {
    final uri = Uri.tryParse(event.link);

    if (uri != null && uri.isAbsolute) {
      await launchUrl(uri);
    }
  }
}
