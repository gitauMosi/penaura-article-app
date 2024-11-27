import 'package:flutter/material.dart';

class TopicWidget extends StatelessWidget {
  const TopicWidget({
    super.key,
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
                borderRadius: BorderRadius.circular(20)),
          ),
          const Positioned(
              bottom: 0,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("Productivity"), Text("230")]),
              ))
        ]));
  }
}
