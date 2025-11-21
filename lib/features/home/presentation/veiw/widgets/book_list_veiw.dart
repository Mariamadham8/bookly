import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/widgets/custum_error_widget.dart';
import '../../view_model/featured_books_cubit/featrures_books_cubit.dart';
import 'custume_listveiw_item.dart';




class BooksListVeiw extends StatelessWidget {
  final  String? img;
  final double Hieght;
  const BooksListVeiw({super.key,required this.Hieght, this.img});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatruresBooksCubit,FeatruresBooksState>(
      builder: (context, state) {
            if(state is FeatruresBooksSucsess)
              {
                return SizedBox(
                  height: MediaQuery.of(context).size.height *0.3,
                  child: ListView.builder(
                    padding: EdgeInsets.all(4),
                    itemCount: state.books.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return  CustumListVeiwItem(Hieght: Hieght,img: state.books[index].volumeInfo?.imageLinks?.thumbnail,);
                    },
                  ),
                );
              }
            else if(state is FeatruresBooksFailure)
              {
                return CustumeErrorWidget(errMessage: state.errMassage,) ;
              }
            else
              {
                 return Center(child:CircularProgressIndicator() );
              }
      },

    );
  }
}

