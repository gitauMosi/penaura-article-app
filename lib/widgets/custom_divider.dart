  import 'package:flutter/material.dart';

Padding contentTextDivider(String name, Function() function) {
    return Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                child: Row(
                  children: [
                     Text(name),
                    const Spacer(),
                    IconButton(
                        onPressed: function,
                        icon: const Icon(
                          Icons.arrow_forward,
                          size: 18,
                          color: Colors.brown,
                        ))
                  ],
                ),
              );
  }