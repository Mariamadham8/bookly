import 'package:bookly/features/home/presentation/veiw/widgets/book_details_body.dart';
import 'package:bookly/features/home/presentation/view_model/similar_books_cubit/book_relevant_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/book_model.dart';

class BookDetailsVeiw extends StatefulWidget {
  final BookModel? bookmodel;
  const BookDetailsVeiw({super.key, this.bookmodel});

  @override
  State<BookDetailsVeiw> createState() => _BookDetailsVeiwState();
}

class _BookDetailsVeiwState extends State<BookDetailsVeiw> {
  @override
  void initState() {
    BlocProvider.of<BookRelevantCubit>(
      context,
    ).fetchRelevantBooks(widget.bookmodel!.volumeInfo!.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BookVeiwBody(bookModel: widget.bookmodel));
  }
}
