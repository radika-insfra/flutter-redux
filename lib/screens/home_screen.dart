import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int _counter = 0;

  void _increaseCount() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text("Hi"),
            Text("Hi"),
            Text("Hi"),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
          ),
          child: Column(
            children: [
              const Text(
                "I've clicked this time",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                '$_counter',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 10.0,
          ),
          child: FloatingActionButton(
            onPressed: _increaseCount,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text("Hi"),
            Text("Hi"),
            Text("Hi"),
            Text("Hi"),
            Text("Hi"),
          ],
        )
      ],
    );
  }
}
