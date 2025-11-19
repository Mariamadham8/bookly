import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
        children:[
          Padding(
            padding:  EdgeInsets.all(10),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                GoRouter.of(context).push('/home');
                  },
                ),
          ),
          Spacer(),
          Icon(Icons.more_horiz),
        ]

    );
  }
}



