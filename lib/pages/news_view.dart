import 'package:flutter/material.dart';
import 'package:news_app/category/category_List_Card.dart';
//import 'package:news_app/widgets/news_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: categoryListCard(),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
                NewsBuilder(category: 'general',)
            ],
          ),
          // child: Column(
          //   children: [
          //     categoryListCard(),
          //     SizedBox(
          //       height: 20,
          //     ),
          //     Expanded(
          //       child: NewsListView(),
          //     ),
          //   ],
          // ),
        ),
      ),
      //NewsList( ),

      // body: ListView.builder(
      //     itemCount: News.length,
      //     itemBuilder: (context, index) {
      //       return NewsList(
      //         item: News[index],
      //       );
      //     }));
    );
  }
}
