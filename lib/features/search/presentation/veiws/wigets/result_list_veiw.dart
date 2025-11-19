import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/durations.dart';
import '../../../../home/presentation/veiw/widgets/best_seller_item.dart';




class SearchResultListVeiw extends StatelessWidget {
  const SearchResultListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.only(left: 8),
      itemCount: 7,
      itemBuilder: (context, index) {
        return InkWell(
            onTap: (){
              GoRouter.of(context).push('/BookDetailsVeiw');
            },
            child: BestSellerItem(title: "Harry Potter\n and the Globet of Fire",subTitle: "J.K Rowling",));
      },
    );
  }
}
