// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:penaura/models/article.dart';
import 'package:penaura/widgets/convert.dart';

// ignore: must_be_immutable
class RecentArticleWidget extends StatelessWidget {
  Article article;
   RecentArticleWidget({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Stack(
            children: [
               Container(
            height: 90,
            width: 95,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              image: DecorationImage(image: NetworkImage(article.image), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20)
            ),
          ),
          Positioned(
            right: 0,

            child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.brown,
              ),
              child: Icon(Icons.bookmark_outlined, color: Colors.white, size: 16)
            ),
          )
            ]
          ),
          Text(article.title),
          Text(article.author),
          Text(formatDate(article.publishedDate))
        ],
      ),
    );
  }
}
