import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'best_seller_item.dart';
import 'best_seller_listveiw.dart';
import 'book_list_veiw.dart';
import 'custum_app_bar.dart';
import 'custume_listveiw_item.dart';


class HomeVeiwBody extends StatelessWidget {
  const HomeVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(

        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustumAppBar(),

                BooksListVeiw(),

                SizedBox(height: 25.h,),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("  Best Sellers", style: Styles.Font18W600

                  ),
                ),
                // BestSellerItem(title: "Harry Potter\n and the Globet of Fire",subTitle: "J.K Rowling",)
              ],
            ),
          ),

          SliverToBoxAdapter(
            child: BestSellerListVeiw(),
          )
        ]
    );
  }
}




