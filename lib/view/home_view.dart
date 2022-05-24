import 'package:flutter/material.dart';

class HomeView extends StatelessWidget{
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
      return  Scaffold(
            //backgroundColor: Colors.lightBlue,
            appBar: AppBar(
              title: const Text("Flutter App"),
              backgroundColor: Colors.blue,
            ),
            body: const Center(
              child: Text(
                'CAR IV',
                style: TextStyle(fontSize: 25),
              ),
            ));
  }
}