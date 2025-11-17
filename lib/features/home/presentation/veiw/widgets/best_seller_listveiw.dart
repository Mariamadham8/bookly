import 'package:flutter/material.dart';

import 'best_seller_item.dart';



class BestSellerListVeiw extends StatelessWidget {
  const BestSellerListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(left: 8),
      itemCount: 7,
      itemBuilder: (context, index) {
        return BestSellerItem(title: "Harry Potter\n and the Globet of Fire",subTitle: "J.K Rowling",);
      },
    );
  }
}
