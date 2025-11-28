import 'package:bookly/features/home/presentation/view_model/similar_books_cubit/book_relevant_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/custum_error_widget.dart';
import '../../view_model/featured_books_cubit/featrures_books_cubit.dart';
import 'custume_listveiw_item.dart';

class BooksListVeiw extends StatelessWidget {
  final String? img;
  final double Hieght;
  const BooksListVeiw({super.key, required this.Hieght, this.img});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookRelevantCubit, BookRelevantState>(
      builder: (context, state) {
        if (state is BookRelevantSucsess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              padding: EdgeInsets.all(4),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustumListVeiwItem(
                  Hieght: Hieght,
                  img: state.books[index].volumeInfo?.imageLinks?.thumbnail,
                );
              },
            ),
          );
        } else if (state is BookRelevantFailure) {
          return CustumeErrorWidget(errMessage: state.errorMsg);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
