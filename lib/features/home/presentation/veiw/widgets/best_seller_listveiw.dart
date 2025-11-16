import 'package:flutter/material.dart';

import 'best_seller_item.dart';



class BestSellerListVeiw extends StatelessWidget {
  const BestSellerListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *0.4,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 8),
        itemCount: 3,
        itemBuilder: (context, index) {
          return BestSellerItem(title: "Harry Potter\n and the Globet of Fire",subTitle: "J.K Rowling",);
        },
      ),
    );
  }
}
