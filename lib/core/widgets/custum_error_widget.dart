import 'package:flutter/material.dart';



class CustumeErrorWidget extends StatelessWidget {
  final String errMessage;
  const CustumeErrorWidget({super.key,required this.errMessage});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Error'),
      content: Text(errMessage),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
