import 'package:flutter/material.dart';
import 'package:mobile_project/view/cellphone.dart';
import 'package:mobile_project/view/count.dart';
import 'package:mobile_project/view/count_screen.dart';
import 'package:mobile_project/view/home_view.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CountScreen());
  }
}
