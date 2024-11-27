// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:penaura/models/article.dart';

import 'convert.dart';

// ignore: must_be_immutable
class NewArticleWidget extends StatelessWidget {
  Article  article;
   NewArticleWidget({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        leading:  Container(
              height: 130,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                 image: DecorationImage(image: NetworkImage(article.image), fit: BoxFit.cover),
                color: Colors.grey[300]
              )
            ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(article.title),
          Text(article.author),
          Text(formatDate(article.publishedDate))
          ],
        )
      ),
    );
  }
}
