import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets.dart';
import 'custum_app_bar.dart';
import 'custume_listveiw_item.dart';


class HomeVeiwBody extends StatelessWidget {
  const HomeVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        CustumAppBar(),
         BooksListVeiw(),
      ],
    );
  }
}

class BooksListVeiw extends StatelessWidget {
  const BooksListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *0.3,
      child: ListView.builder(
        padding: EdgeInsets.all(4),

        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  CustumListVeiwItem();
        },
      ),
    );
  }
}

