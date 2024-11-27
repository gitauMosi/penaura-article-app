// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:penaura/models/topic.dart';

// ignore: must_be_immutable
class TopicWidget extends StatelessWidget {
  Topic topic;

  TopicWidget({
    super.key,
    required this.topic,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Stack(children: [
          Container(
            height: 90,
            width: 150,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                image: DecorationImage(
                    image: AssetImage(
                      topic.image,
                    ),
                    fit: BoxFit.cover,
                    opacity: 0.5),
                borderRadius: BorderRadius.circular(20)),
          ),
          Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        topic.title,
                        style: const TextStyle(color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        topic.articles.toString(),
                        style: const TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
                      )
                    ]),
              ))
        ]));
  }
}
