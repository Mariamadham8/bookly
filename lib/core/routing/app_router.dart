
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/veiw/book_details_veiw.dart';
import '../../features/home/presentation/veiw/home.dart';
import '../../features/search/presentation/veiws/search_veiw.dart';
import '../../features/splash/presentation/veiw/spalsh_view.dart';

abstract class AppRouter{

 static final  router =GoRouter(
      routes: [
        GoRoute(
          path :'/',
          builder: (context, state) => const ViewSplash(),
        ),
        GoRoute(
          path:'/home',
          builder: (context, state) => const HomeVeiw(),
        ),

        GoRoute(
          path: '/BookDetailsVeiw',
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const BookDetailsVeiw(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            transitionDuration: Duration(milliseconds: 300),
          ),
        ),
        GoRoute(
          path: '/SearchVeiw',
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const SearchVeiw(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return SlideTransition(
                position: animation.drive(
                  Tween(
                    begin: const Offset(1, 0),
                    end: Offset.zero,
                  ).chain(CurveTween(curve: Curves.easeInOut)),
                ),
                child: child,
              );
            },

            transitionDuration: Duration(milliseconds: 300),
          ),
        ),

      ]
  );
}