import 'package:flutter/material.dart';
import 'package:penaura/utils/data.dart';
import 'package:penaura/widgets/recent_article_widget.dart';

import '../../widgets/custom_divider.dart';
import '../../widgets/custom_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(
        color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500);
    var textStyle2 = const TextStyle(color: Colors.brown, fontSize: 18);
    return Scaffold(
        appBar: AppBar(
          title: const Text("PenAura"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_outlined)),
            )
          ],
          elevation: 0
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                customHeader(context, textStyle, textStyle2),
                contentTextDivider("Recent Articles", (){}),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    itemCount: articles.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index)=>RecentArticleWidget(article: articles[index],)),
                ),
                contentTextDivider("Your Articles", (){}),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    itemCount: articles.length,
                    shrinkWrap: true,
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index)=>RecentArticleWidget(article: articles[index],)),
                ),
                contentTextDivider("On Your Bookmark", (){}),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    itemCount: articles.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index)=>RecentArticleWidget(article: articles[index],)),
                ),
              ],
            ),
          ),
        ));
  }
  
}
