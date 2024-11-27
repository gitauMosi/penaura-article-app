import 'package:flutter/material.dart';

Container customHeader(
      BuildContext context, TextStyle textStyle, TextStyle textStyle2) {
    return Container(
      height: 150,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.brown, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Learn how to become a \ngreat writer right now!",
                style: textStyle,
              ),
              MaterialButton(
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {},
                child: Text(
                  "Read More",
                  style: textStyle2,
                ),
              ),

              
            ],
          ),
          Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/images/writer.png", ),
              )
        ],
      ),
    );
  }