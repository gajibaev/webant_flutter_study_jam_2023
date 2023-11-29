import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webant_flutter_study_jam_2023/bloc/news_bloc/news_bloc.dart';
import 'package:webant_flutter_study_jam_2023/ui/screens/news_details_screen.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  // Вызывается при появлении виджета на экране пользовaтеля
  @override
  void initState() {
    context.read<NewsBloc>().add(LoadNewsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Все новости'),
      ),
      body: SafeArea(
        child: BlocBuilder<NewsBloc, NewsState>(
          builder: (context, state) {
            return switch (state) {
              final NewsInitialState _ => const Center(
                  child: CircularProgressIndicator(),
                ),
              final NewsLoadingState _ => const Center(
                  child: CircularProgressIndicator(),
                ),
              final NewsSuccessState state => ListView.builder(
                  itemCount: state.news.length,
                  itemBuilder: (context, index) {
                    final news = state.news[index];

                    return ListTile(
                      minVerticalPadding: 0,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 28),
                      leading: news.imageUrl != null
                          ? Container(
                              width: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                    news.imageUrl!,
                                  ),
                                ),
                              ),
                            )
                          : null,
                      title: Text(
                        news.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        news.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const NewsDetailsScreen(),
                          ),
                        );
                      },
                    );
                  },
                ),
              final NewsFailureState _ => const Center(
                  child: Text('Ошибка'),
                ),
            };
          },
        ),
      ),
    );
  }
}
