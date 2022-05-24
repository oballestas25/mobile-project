import 'package:flutter/material.dart';

class Cellphone extends StatelessWidget {
  const Cellphone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: const Text("Flutter App"),
          backgroundColor: Colors.green,
        ),
        body: const Center(
          child: Text(
            'CAR IV',
            style: TextStyle(fontSize: 35),
          ),
        ));
  }
}
