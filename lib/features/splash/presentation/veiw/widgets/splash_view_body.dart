import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../core/constants/durations.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../home/presentation/veiw/home.dart';
import 'SlidingText.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animation_controller ;
  late Animation<Offset> sliding_animation ;

  @override
  void initState(){
    super.initState();
    InitSlidingAnimation();
    NavigateToHomeScreen();

  }

  void NavigateToHomeScreen(){
    Future.delayed( const Duration(seconds: 3),() {
      Get.to(()=> const HomeVeiw(),transition: Transition.fade,duration: KtransitionDuration);
    },);
  }

  void InitSlidingAnimation(){
    animation_controller = AnimationController(vsync: this,duration: const Duration(seconds: 2));
    sliding_animation =Tween<Offset>(begin:Offset(0, 3) ,end:Offset.zero ).animate(animation_controller);
   //responsible for starting the animation
    animation_controller.forward();
  }

  @override
  void dispose() {
    animation_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(assets.logo,width: 40,height: 50,),
        //this for optimizing the performance to rebuild this text widget not all the col
        SlidingText(sliding_animation:sliding_animation ,)
      ],
    );
  }
}
