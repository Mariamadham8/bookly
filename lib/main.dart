import 'package:bookly/features/home/data/repos/home_repo_implemntation.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';

import 'core/constants/colors.dart';
import 'core/di/service_locator.dart';

import 'core/routing/app_router.dart';
import 'features/home/presentation/view_model/featured_books_cubit/featrures_books_cubit.dart';
import 'features/home/presentation/view_model/newest_books/newest_books_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        //BlocProvider(create: (context) => FeatruresBooksCubit(HomeRepImplemintation(apiServices:ApiServices(Dio()))),),
        BlocProvider(
          create:
              (context) =>
                  FeatruresBooksCubit(getit.get<HomeRepImplemintation>())
                    ..fetchFeaturedBooks(),
        ),

        //  BlocProvider(create: (context) => NewestBooksCubit(HomeRepImplemintation(apiServices:ApiServices(Dio()))),)
        BlocProvider(
          create:
              (context) =>
                  NewestBooksCubit(getit.get<HomeRepImplemintation>())
                    ..fetchNewestBooks(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: myColors.Darkblue,
            textTheme: GoogleFonts.montserratTextTheme(
              ThemeData.dark().textTheme,
            ),
          ),
          // home: const ViewSplash(),
        ),
      ),
    );
  }
}
