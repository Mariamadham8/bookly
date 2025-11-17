import 'package:bookly/features/home/presentation/veiw/widgets/preveiw.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'book_details_appbar.dart';
import 'book_list_veiw.dart';
import 'custume_listveiw_item.dart';

class BookVeiwBody extends StatelessWidget {
  const BookVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BookDetailsAppBar(),
        SizedBox(
            height: MediaQuery.of(context).size.height *0.3,
            child: CustumListVeiwItem(Hieght: 50.h,img: assets.bookTest,)
        ),
        SizedBox(height: 20.h,),
        Preveiw(title: "   Harry Potter and the Globet of Fire",subTitle: "   J.K Rowling",),
        SizedBox(height: 40.h,),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(" You Can also like",style: Styles.Font14W600,)
        ),
        SizedBox(height: 10.h,),
        SizedBox(
            height: MediaQuery.of(context).size.height *0.2,
            child: BooksListVeiw(Hieght: 10.h,)),

      ],
    );
  }
}

