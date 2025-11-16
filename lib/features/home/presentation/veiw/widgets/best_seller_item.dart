import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'custume_listveiw_item.dart';


class BestSellerItem extends StatelessWidget {
  final String title ;
  final String subTitle;
  const BestSellerItem({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:120.h,
      child: Row(
        spacing: 30.w,
        children: [
          CustumListVeiwItem(img: assets.bookTest,Hieght:45,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(title,style: Styles.Font18W600,),
              Text(subTitle,style: Styles.Font16W200,),
              Row(
                children: [
                  Text("19.99\$",style: Styles.Font18W600,),
                  SizedBox(width: 20.w,),
                  Icon(Icons.star, color: Colors.amber,),
                  RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                              text: "4.8",
                              style: Styles.Font16W400
                          ),
                          TextSpan(
                              text: " (2390)",
                              style: Styles.Font16W400.copyWith(color: Colors.grey)
                          ),
                        ]
                    ),

                  ),

                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
