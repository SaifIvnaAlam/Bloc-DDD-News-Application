import 'package:flutter/material.dart';
import 'package:news_app/application/cubit/news_cubit.dart';
import 'package:news_app/infrastructure/new_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/presentation/home_page.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(NewsRepository()),
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true),
        home: HomePage(),
      ),
    );
  }
}
