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
import 'book_details_body.dart';



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

                  GoRouter.of(context).push('/BookDetailsVeiw',extra: state.books[index],);
                  },
                child: BestSellerItem(IMG:state.books[index].volumeInfo?.imageLinks?.thumbnail,title: state.books[index].volumeInfo?.title,
                  subTitle: state.books[index].volumeInfo?.publisher,
                  count:state.books[index].volumeInfo?.pageCount.toString() ,
                  Rating: state.books[index].volumeInfo?.maturityRating?.toString(),
                 )
              );
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

