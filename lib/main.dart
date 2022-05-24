import 'package:flutter/material.dart';
import 'package:mobile_project/view/cellphone.dart';
import 'package:mobile_project/view/home_view.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:HomeView());
  }
}
