import 'package:flutter/material.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({Key? key}) : super(key: key);

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  int count = 0;

  void incrementCounter() {
    setState(() {
      count++;
    });
  }

  void decrementCounter() {
    setState(() {
      count--;
    });
  }

  void restartCounter() {
    setState(() {
      count = 0;
    });
  }

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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingCustomW(
        increase: incrementCounter,
        decrease: decrementCounter,
        restart: restartCounter,
      ),
    );
  }
}

class FloatingCustomW extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function restart;
  const FloatingCustomW(
      {Key? key,
      required this.increase,
      required this.decrease,
      required this.restart})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FloatingActionButton(
          onPressed: () => increase(),
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: () => decrease(),
          child: const Icon(Icons.remove),
        ),
        FloatingActionButton(
          onPressed: () => restart(),
          child: const Icon(Icons.restore),
        ),
      ],
    );
  }
}
