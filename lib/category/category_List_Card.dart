import 'package:flutter/material.dart';

import '../models/news_Item.dart';
import '../widgets/category_Card.dart';

class categoryListCard extends StatelessWidget {
  categoryListCard({
    super.key,
  });
  final List<NewsItem> News = [
    NewsItem(news: 'Business', image: 'assets/business.avif'),
    NewsItem(news: 'Entertainment', image: 'assets/entertaiment.avif'),
    NewsItem(news: 'General', image: 'assets/general.avif'),
    NewsItem(news: 'Health', image: 'assets/health.avif'),
    NewsItem(news: 'Science', image: 'assets/science.avif'),
    NewsItem(news: 'Sports', image: 'assets/sports.avif'),
    NewsItem(news: 'Technology', image: 'assets/technology.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: News.length,
          itemBuilder: (context, index) {
            return NewsList(
              item: News[index],
            );
          }),
    );
  }
}
