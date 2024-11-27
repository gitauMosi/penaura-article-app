import 'package:flutter/material.dart';

class NewArticleWidget extends StatelessWidget {
  const NewArticleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        leading:  Container(
              height: 120,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300]
              )
            ),
        title: Text("title")
      ),
    );
  }
}
