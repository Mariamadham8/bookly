import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constants/colors.dart';
import 'features/splash/presentation/veiw/spalsh_view.dart';
void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(
          scaffoldBackgroundColor:  myColors.Darkblue,
        ),
        home: const ViewSplash(),
    );
  }
}
