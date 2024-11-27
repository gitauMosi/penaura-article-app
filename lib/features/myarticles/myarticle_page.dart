import 'package:flutter/material.dart';

import '../../widgets/new_article_widget.dart';

class MyarticlePage extends StatelessWidget {
  const MyarticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: const Text("My Articles"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            )
          ],
          elevation: 0),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                     physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) => const  NewArticleWidget()),
        ),
            
    );
  }
}