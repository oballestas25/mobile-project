import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Center(
          child: SizedBox(
                  height: 300,
                  width: 300,
                  child: Lottie.asset('assets/animations/car-wash-home.json'),
                 ),
        ));
  }
}
