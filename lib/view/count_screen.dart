import 'package:flutter/material.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({Key? key}) : super(key: key);

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    const sizeText = TextStyle(fontSize: 25);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Count App"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Count',
              style: sizeText,
            ),
            Text(
              '$count',
              style: sizeText,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
          showMessage();
        },
        child: const Icon(Icons.access_alarm),
      ),
    );
  }

  void showMessage() {
    print('Hi, again');
  }
}
