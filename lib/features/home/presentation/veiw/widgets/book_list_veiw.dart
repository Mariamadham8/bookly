import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import 'custume_listveiw_item.dart';




class BooksListVeiw extends StatelessWidget {
  final double Hieght;
  const BooksListVeiw({super.key,required this.Hieght});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *0.3,
      child: ListView.builder(
        padding: EdgeInsets.all(4),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  CustumListVeiwItem(Hieght: Hieght,img: assets.bookTest,);
        },
      ),
    );
  }
}

