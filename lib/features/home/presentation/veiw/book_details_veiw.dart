import 'package:bookly/features/home/presentation/veiw/widgets/book_details_body.dart';
import 'package:flutter/material.dart';



class BookDetailsVeiw extends StatelessWidget {
  const BookDetailsVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:BookVeiwBody(),
    );
  }
}
