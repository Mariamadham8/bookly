import 'package:bookly/features/search/presentation/veiws/wigets/result_list_veiw.dart';
import 'package:bookly/features/search/presentation/veiws/wigets/search_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SearchVeiwBody extends StatelessWidget {
  const SearchVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: SafeArea(
         child:Column(
           children: [
             Padding(
               padding: const EdgeInsets.all(12),
               child: SearchVeiwTextFeild(),
             ),
             SizedBox(
               height: 20.h,
             ),
             SearchResultListVeiw(),
      
           ],
         )
      ),
    );
  }
}
