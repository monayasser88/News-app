//import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/pages/news_view.dart';
//import 'package:news_app/services/news_services.dart';


void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NewsView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
