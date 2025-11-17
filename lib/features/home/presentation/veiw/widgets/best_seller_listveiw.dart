import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../../../../core/constants/durations.dart';
import '../book_details_veiw.dart';
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
        return InkWell(
          onTap: (){
            Get.to(()=> const BookDetailsVeiw(),transition: Transition.fade,duration: KtransitionDuration);
          },
            child: BestSellerItem(title: "Harry Potter\n and the Globet of Fire",subTitle: "J.K Rowling",));
      },
    );
  }
}
