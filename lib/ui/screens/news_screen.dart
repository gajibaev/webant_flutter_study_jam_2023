import 'package:flutter/material.dart';
import 'package:webant_flutter_study_jam_2023/ui/screens/news_details_screen.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Все новости'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Заголовок'),
              subtitle: const Text('Описание'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const NewsDetailsScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
