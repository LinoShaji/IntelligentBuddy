import 'package:flutter/material.dart';

class test2 extends StatefulWidget {
  const test2({Key? key}) : super(key: key);

  @override
  State<test2> createState() => _testState();
}

class _testState extends State<test2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.amber,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Text("data"),
          ),
        ],
      ),
    );
  }
}
