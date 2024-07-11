import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_list_view.dart';

import '../services/news_services.dart';

class NewsBuilder extends StatefulWidget {
  const NewsBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsBuilder> createState() => _NewsBuilderState();
}

class _NewsBuilderState extends State<NewsBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement setState
    super.initState();
    future = NewsService(Dio()).getNews(category: widget.category);
  }

  @override

  // bool isLoading = true;
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, AsyncSnapshot) {
          if (AsyncSnapshot.hasData) {
            return NewsListView(articles: AsyncSnapshot.data!);
          } else if (AsyncSnapshot.hasError) {
            return SliverToBoxAdapter(
              child: Text('oops there is an error please try again later!'),
            );
          } else {
            return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
    // isLoading
    //       ? const SliverToBoxAdapter(
    //           child: Center(child: CircularProgressIndicator()))
    //       : articles.isNotEmpty
    //           ? NewsListView(articles: articles)
    //           : SliverToBoxAdapter(
    //               child: Text('oops there is an error please try again later!'),
    //             );
    // }
  }
}
