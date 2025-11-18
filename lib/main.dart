import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/constants/colors.dart';
import 'core/utils/app_router.dart';
import 'features/splash/presentation/veiw/spalsh_view.dart';
void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
          routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor:  myColors.Darkblue,
            textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          ),
         // home: const ViewSplash(),
      ),
    );
  }
}


