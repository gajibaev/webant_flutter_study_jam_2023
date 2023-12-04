import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webant_flutter_study_jam_2023/bloc/news_bloc/news_bloc.dart';
import 'package:webant_flutter_study_jam_2023/bloc/news_details/news_details_bloc.dart';
import 'package:webant_flutter_study_jam_2023/services/news_service.dart';
import 'package:webant_flutter_study_jam_2023/ui/screens/news_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final dio = Dio();
  late final newsService = NewsService(dio);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewsBloc(
            newsService: newsService,
          ),
        ),
        BlocProvider(
          create: (context) => NewsDetailsBloc(
            newsService: newsService,
          ),
        ),
      ],
      child: const MaterialApp(
        home: NewsScreen(),
      ),
    );
  }
}
