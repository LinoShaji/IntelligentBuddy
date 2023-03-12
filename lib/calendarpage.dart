import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Column(children: [
          Center(
              child: FloatingActionButton(
                  onPressed: () => showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) => Column(
                            children: [const Text("Add tesk"),
                              Column(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  TextFormField(decoration: const InputDecoration(hintText: "enter the task"),),
                                  TextButton(onPressed: () {}, child: const Text("Add"))
                                ],
                              )],
                          )))),

        ]),
    ]
      ),
    );
  }
}
//
