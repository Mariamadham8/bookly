import 'package:bookly/features/home/presentation/veiw/widgets/home_veiw_body.dart';
import 'package:flutter/material.dart';


class HomeVeiw extends StatefulWidget {
  const HomeVeiw({super.key});

  @override
  State<HomeVeiw> createState() => _HomeVeiwState();
}

class _HomeVeiwState extends State<HomeVeiw> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeVeiwBody(),


    );
  }
}
