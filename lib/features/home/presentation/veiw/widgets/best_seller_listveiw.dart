import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/durations.dart';
import '../../../../../core/widgets/custum_error_widget.dart';
import '../../view_model/newest_books/newest_books_cubit.dart';
import '../book_details_veiw.dart';
import 'best_seller_item.dart';



class BestSellerListVeiw extends StatelessWidget {
  const BestSellerListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit,NewestBooksState>(
      builder: (context, state) {
        if(state is NewestBooksSuccess){
          return
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(left: 8),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
              return InkWell(
              onTap: (){
                  GoRouter.of(context).push('/BookDetailsVeiw');
                  },
                child: BestSellerItem(IMG:state.books[index].volumeInfo?.imageLinks?.thumbnail,title: "Harry Potter\n and the Globet of Fire",subTitle: "J.K Rowling",));
              },
            );
        }
        else if(state is NewestBooksFailure){
          return CustumeErrorWidget(errMessage: state.errMessage,);
        }
        else{
          return Center(child: CircularProgressIndicator(),);
        }

      },

      );

  }
}

