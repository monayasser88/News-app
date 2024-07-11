import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child:articleModel.image!= null? Image.network(
            articleModel.image!,
            height: 200,
            width: double.infinity,
            fit: BoxFit.fill,
          ):Image.network(
            "https://i.pinimg.com/236x/4e/10/7f/4e107f416df20ebc3cbf839c4ba7ee3b.jpg",
            height: 200,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
          Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
          Text(
          articleModel.subTitle??'',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
