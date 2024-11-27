import 'package:flutter/material.dart';

import '../../utils/data.dart';
import '../../widgets/custom_divider.dart';
import '../../widgets/new_article_widget.dart';
import '../../widgets/recent_article_widget.dart';
import '../../widgets/top_writers_widget.dart';
import '../../widgets/topics_widget.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Discover"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            )
          ],
          elevation: 0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(children: [
            contentTextDivider("Most Popular", () {}),
            SizedBox(
              height: 150,
              child: ListView.builder(
                    itemCount: articles.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index)=>RecentArticleWidget(article: articles[index],)),
            ),
            contentTextDivider("Explore by Topics", () {}),
            SizedBox(
              height: 90,
              child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const TopicWidget()),
            ),
            contentTextDivider("Top Writers", () {}),
            SizedBox(
              height: 125,
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const TopWritersWidget(),
              ),
            ),
            contentTextDivider("Our Recommendations", () {}),
            SizedBox(
              height: 150,
              child:ListView.builder(
                    itemCount: articles.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index)=>RecentArticleWidget(article: articles[index],)),
            ),
            contentTextDivider("New Articles", () {}),
           
             SizedBox(
             // height: 150,
              child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                   physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => const  NewArticleWidget()),
            ),
            
          ]),
        ),
      ),
    );
  }
}

