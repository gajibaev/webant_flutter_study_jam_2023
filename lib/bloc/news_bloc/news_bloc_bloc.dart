import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'news_bloc_event.dart';
part 'news_bloc_state.dart';

class NewsBlocBloc extends Bloc<NewsBlocEvent, NewsBlocState> {
  NewsBlocBloc() : super(NewsBlocInitial()) {
    on<NewsBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
