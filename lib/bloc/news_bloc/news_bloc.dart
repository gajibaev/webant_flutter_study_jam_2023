import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:webant_flutter_study_jam_2023/models/news.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsInitialState()) {
    on<LoadNewsEvent>((event, emit) {
      emit(NewsLoadingState());

      final news = [
        News(
          title: 'Название новости, Lorem ipsum dolor sit amet, consectetur',
          description: 'Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur',
          imageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg/800px-Good_Food_Display_-_NCI_Visuals_Online.jpg',
          sourceUrl: 'google.com',
        )
      ];

      emit(NewsSuccessState(news: news));
    });
  }
}
