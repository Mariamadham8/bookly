import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets.dart';
import 'custum_app_bar.dart';
import 'custume_listveiw_item.dart';


class HomeVeiwBody extends StatelessWidget {
  const HomeVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        CustumAppBar(),
        CustumListVeiwItem(),
      ],
    );
  }
}
