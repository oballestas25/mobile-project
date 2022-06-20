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
                  child: Column(
                    children: [
                      Lottie.asset('assets/animations/car-wash-home.json'),
                      const Text("Home",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                    ],
                  ),
                 ),
        ));
  }
}
