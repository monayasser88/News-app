//import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'news_Tile.dart';
//import 'package:news_app/services/news_services.dart';

class NewsListView extends StatelessWidget {
  NewsListView({
    super.key, required this.articles,
  });

final List<ArticleModel> articles ;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length, (context, index) {
      return Padding (
        padding: EdgeInsets.only(bottom: 20.0),
        child: NewsTile(articleModel:articles [index]),
      );
    }));
  }
}
