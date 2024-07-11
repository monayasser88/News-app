import 'package:flutter/material.dart';

import '../models/news_Item.dart';
import 'category_view.dart';

class NewsList extends StatelessWidget {
  final NewsItem item;
  const NewsList({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(category: item.news,);
        }));
      },
      child: SafeArea(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(item.image)),
              ),
              child: Center(
                child: Text(
                  item.news,
                  style: const TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
          ),
          // child: Column(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Container(
          //         decoration:
          //             BoxDecoration(borderRadius: BorderRadius.circular(20)),
          //         child: Image(image: AssetImage(item.image)),
          //         margin: EdgeInsets.all(10),
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Container(
          //           child: Text(
          //         item.news,
          //         style: TextStyle(fontSize: 24, color: Colors.black),
          //       )),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
