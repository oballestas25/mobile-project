
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class CallFireBase extends StatelessWidget{
  const CallFireBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child:  Container(
            child: const Text('Hello World'),
          ),
        ),
      ),
    );
  }
}

void callDatabase (){
/*   FirebaseDatabase database = FirebaseDatabase.instance.ref(); */
/*   DatabaseReference starCountRef = 
    FirebaseDatabase.instance.ref('/Registros');
    starCountRef.onValue.listen((event) {
      final data = event.snapshot.value;
      data.toString();
    }) */
  
}