import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webant_flutter_study_jam_2023/bloc/news_bloc/news_bloc.dart';
import 'package:webant_flutter_study_jam_2023/ui/screens/news_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsBloc(),
      child: const MaterialApp(
        home: NewsScreen(),
      ),
    );
  }
}
