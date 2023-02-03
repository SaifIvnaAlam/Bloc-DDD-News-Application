import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/application/cubit/news_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<NewsCubit>().getNews();
    return Scaffold(
      body: BlocBuilder<NewsCubit, NewsState>(
        builder: (context, state) {
          return state.map(
            error: (_) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            loading: (value) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            loaded: (value) {
              var news = value.news;
              return ListView.builder(
                  itemCount: news.articles.length,
                  itemBuilder: (context, index) {
                    final articals = news.articles[index];
                    return Column(
                      children: [
                        Text(
                          articals.title!,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Image.network(articals.urlToImage!),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(articals.description!),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  });
            },
          );
        },
      ),
    );
  }
}
