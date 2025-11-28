import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'custume_listveiw_item.dart';

class BestSellerItem extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final String? IMG;
  final String? Rating;
  final String? count;
  const BestSellerItem({
    super.key,
    this.title,
    this.subTitle,
    this.IMG,
    this.Rating,
    this.count,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: Row(
        spacing: 30.w,
        children: [
          CustumListVeiwItem(img: IMG, Hieght: 45),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  title ?? "",
                  style: Styles.Font18W600,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Expanded(
                child: Text(
                  subTitle ?? "no Authur ",
                  style: Styles.Font16W200,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                children: [
                  Text("19.99\$", style: Styles.Font18W600),
                  SizedBox(width: 20.w),
                  Icon(Icons.star, color: Colors.amber, size: 14),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: Rating ?? "4.5",
                          style: Styles.Font16W400,
                        ),
                        TextSpan(
                          text: " ($count)",
                          style: Styles.Font16W400.copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
