import 'package:bookly/features/home/presentation/veiw/widgets/book_details_body.dart';
import 'package:flutter/material.dart';

import '../../data/models/book_model.dart';



class BookDetailsVeiw extends StatelessWidget {
  final  BookModel? bookmodel;
  const BookDetailsVeiw({super.key,this.bookmodel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookVeiwBody(bookModel:bookmodel ,),
    );
  }
}
