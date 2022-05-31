import 'package:flutter/material.dart';
import 'package:mobile_project/view/cellphone.dart';
import 'package:mobile_project/view/change_color.dart';
import 'package:mobile_project/view/count.dart';
import 'package:mobile_project/view/count_screen.dart';
import 'package:mobile_project/view/home_view.dart';
import 'package:mobile_project/view/change_color.dart';
import 'package:mobile_project/view/listview_1.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ListView1());
  }
}
