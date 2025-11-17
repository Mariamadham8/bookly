import 'package:flutter/material.dart';


class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
        children:[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_back_ios),
          ),
          Spacer(),
          Icon(Icons.more_horiz),
        ]
    );
  }
}



