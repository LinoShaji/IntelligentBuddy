import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test2 extends StatefulWidget {
  const Test2({Key? key}) : super(key: key);

  @override
  State<Test2> createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  bool visibleCont = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
          child: Visibility(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedOpacity(
                  opacity: visibleCont? 1:0,
                  duration: Duration(milliseconds: 300),
                  child: AnimatedContainer(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.black45),
                      width: 200,
                      height: 200,
                      duration: Duration(milliseconds: 600),
                      child: Text('data')),
                ),
                FloatingActionButton(onPressed: (){setState(() {
                  visibleCont = !visibleCont;
                });})
              ],
            ),
          )),
    );
  }
}
