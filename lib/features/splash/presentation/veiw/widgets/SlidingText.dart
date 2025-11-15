import 'package:flutter/material.dart';


class SlidingText extends StatelessWidget {
  final Animation<Offset> sliding_animation;
  const SlidingText({super.key, required this.sliding_animation});

  @override
  Widget build(BuildContext context) {
    return  AnimatedBuilder(
      animation: sliding_animation,
      builder: (context, _) {
        return   SlideTransition(
            position: sliding_animation ,
            child: const Text("Read Free books",textAlign: TextAlign.center,));
      },
    );
  }
}
