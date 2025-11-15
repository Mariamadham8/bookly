import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets.dart';


class CustumAppBar extends StatelessWidget {
  const CustumAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical:30),
      child: Row(
        children: [
          SvgPicture.asset(assets.logo,height:23,),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),

        ],
      ),
    );
  }
}