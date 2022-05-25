import 'dart:math';

import 'package:flutter/material.dart';

class ChangeColor extends StatefulWidget {
  const ChangeColor({Key? key}) : super(key: key);

  @override
  State<ChangeColor> createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  int _counter = 0;
  int colorIndex = 0;
  Color textColor = Colors.blue;
  Color buttonColor = Colors.black;
  List myColors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.black,
    Colors.orange
  ];

  void changeColor() {
    colorIndex++;
    if (colorIndex == myColors.length) {
      colorIndex = 0;
    }
    textColor = myColors[colorIndex];
    buttonColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      changeColor();
    });
  }

  void _restartCounter() {
    setState(() {
      _counter = 0;
      textColor = Colors.blue;
      buttonColor = Colors.black;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      changeColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('CAR IV App'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Count',
              style: TextStyle(color: textColor, fontSize: 25),
            ),
            Text(
              '$_counter',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: textColor),
            ),
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 145),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: _incrementCounter,
                backgroundColor: buttonColor,
                child: const Icon(Icons.add),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: _decrementCounter,
                backgroundColor: buttonColor,
                child: const Icon(Icons.remove),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: _restartCounter,
                backgroundColor: buttonColor,
                child: const Icon(Icons.restart_alt),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
