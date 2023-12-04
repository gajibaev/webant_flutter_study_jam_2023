import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:webant_flutter_study_jam_2023/bloc/news_details/news_details_bloc.dart';

class NewsDetailsScreen extends StatefulWidget {
  const NewsDetailsScreen({
    super.key,
    required this.id,
  });

  final int id;

  @override
  State<NewsDetailsScreen> createState() => _NewsDetailsScreenState();
}

class _NewsDetailsScreenState extends State<NewsDetailsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<NewsDetailsBloc>().add(LoadNewsById(
          id: widget.id,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Информация'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 50),
          child: BlocBuilder<NewsDetailsBloc, NewsDetailsState>(
            builder: (context, state) {
              return switch (state) {
                final NewsDetailsInitialState _ => const Center(
                    child: CircularProgressIndicator(),
                  ),
                final NewsDetailsLoadingState _ => const Center(
                    child: CircularProgressIndicator(),
                  ),
                final NewsDetailsSuccessState state => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Container(
                          child: state.news.imageUrl != null
                              ? Container(
                                  height: 235,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        state.news.imageUrl!,
                                      ),
                                    ),
                                  ),
                                )
                              : null,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text(state.news.title),
                      ),
                      const Divider(),
                      Text(state.news.description),
                      Padding(
                        padding: const EdgeInsets.only(top: 19),
                        child: MaterialButton(
                          onPressed: () {
                            final link = state.news.sourceUrl;

                            if (link != null) {
                              context.read<NewsDetailsBloc>().add(
                                    OpenNewsSourceLink(link: link),
                                  );
                            }
                          },
                          elevation: 1,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(
                                'assets/icons/Icon.svg',
                              ),
                              const Text('Перейти в источник'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                final NewsDetailsFailureState _ => const Center(
                    child: CircularProgressIndicator(),
                  ),
              };
            },
          ),
        ),
      ),
    );
  }
}
