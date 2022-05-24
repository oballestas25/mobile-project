import 'package:flutter/material.dart';

class ChangeColor extends StatefulWidget {
  const ChangeColor({Key? key}) : super(key: key);

  @override
  State<ChangeColor> createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  int _counter = 0;
  Color textColor = Colors.blue;
  List myColors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.black,
    Colors.orange
  ];
  int colorIndex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      colorIndex++;
      if (colorIndex == myColors.length) {
        colorIndex = 0;
      }
      textColor = myColors[colorIndex];
    });
  }

  void _restartCounter() {
    setState(() {
      _counter = 0;
      textColor = Colors.blue;
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
            padding: const EdgeInsets.only(bottom: 85),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: _incrementCounter,
                backgroundColor: textColor,
                child: const Icon(Icons.add),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: _restartCounter,
                backgroundColor: textColor,
                child: const Icon(Icons.restart_alt),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
