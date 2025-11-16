import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets.dart';



class CustumListVeiwItem extends StatelessWidget {
  final String img;
  final double Hieght;
  const CustumListVeiwItem({super.key,required this.img, required this.Hieght});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: AspectRatio(
        aspectRatio: 2.6/4,
        child: Container(
          height: Hieght.h,
          width: 80.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(image: Image.asset(img).image,fit: BoxFit.fill)
          ),
        ),
      ),
    );
  }
}



