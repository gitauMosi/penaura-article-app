import 'package:flutter/material.dart';

class TopWritersWidget extends StatelessWidget {
  const TopWritersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.only(right: 10),
      child: Column(
       
        children: [

          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[300]
            )
          ),
          Text("Author", style: TextStyle(fontWeight: FontWeight.bold))

        ],
      ),
    );
  }
}
