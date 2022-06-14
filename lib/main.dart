import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:mobile_project/view/cellphone.dart';
import 'package:mobile_project/view/change_color.dart';
import 'package:mobile_project/view/count.dart';
import 'package:mobile_project/view/count_screen.dart';
import 'package:mobile_project/view/home_view.dart';
import 'package:mobile_project/view/change_color.dart';
import 'package:mobile_project/view/list_firebase.dart';
import 'package:mobile_project/view/listview_1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //callDatabase();
  await Firebase.initializeApp();
  runApp(const Myapp());
}


class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: ListFireBase());
  }
}

/* void callDatabase() {
  DatabaseReference starCountRef =
      FirebaseDatabase.instance.ref('Registros/');
  starCountRef.onValue.listen((event) {
    final data = event.snapshot.value;
    print(data.toString());
  });
} */