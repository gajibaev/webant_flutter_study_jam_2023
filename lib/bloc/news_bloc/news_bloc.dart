import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:webant_flutter_study_jam_2023/models/news.dart';
import 'package:webant_flutter_study_jam_2023/services/news_service.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc({
    required this.newsService,
  }) : super(NewsInitialState()) {
    on<LoadNewsEvent>(_onLoadNewsEvent);
  }

  final NewsService newsService;

  Future<void> _onLoadNewsEvent(NewsEvent event, Emitter<NewsState> emit) async {
    emit(NewsLoadingState());

    final newsPaginationResponse = await newsService.fetchArticles();

    if (newsPaginationResponse.results != null) {
      final news = newsPaginationResponse.results!
          .map(
            (e) => e.toNewsModel(),
          )
          .toList();

      emit(NewsSuccessState(news: news));
    }
  }
}
