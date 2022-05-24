import 'package:flutter/material.dart';

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int count = 10;
    const sizeText = TextStyle(fontSize: 20);
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
          count++;
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
