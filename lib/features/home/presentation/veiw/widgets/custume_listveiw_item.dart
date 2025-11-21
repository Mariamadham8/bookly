import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets.dart';



class CustumListVeiwItem extends StatelessWidget {
   final String? img;
  final double Hieght;
  const CustumListVeiwItem({super.key,required this.img, required this.Hieght});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 2.6/4,
          child: CachedNetworkImage(
            imageUrl: img ?? assets.bookTest,
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => Container(
              height: Hieght.h,
              width: 80.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(image: AssetImage(assets.bookTest),fit: BoxFit.fill)
              ),
            ),
          )
        ),
      ),
    );
  }
}



