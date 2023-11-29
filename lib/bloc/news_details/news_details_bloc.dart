import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:webant_flutter_study_jam_2023/models/news.dart';

part 'news_details_event.dart';
part 'news_details_state.dart';

class NewsDetailsBloc extends Bloc<NewsDetailsEvent, NewsDetailsState> {
  NewsDetailsBloc() : super(NewsDetailsInitialState()) {
    on<NewsDetailsEvent>(_onNewsDetailsEvent);
  }

  Future<void> _onNewsDetailsEvent(
    NewsDetailsEvent event,
    Emitter<NewsDetailsState> emit,
  ) async {
    emit(NewsDetailsLoadingState());

    final news = News(
      title: 'title',
      description: 'лыв',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg/800px-Good_Food_Display_-_NCI_Visuals_Online.jpg',
    );

    emit(NewsDetailsSuccessState(news: news));
  }
}
