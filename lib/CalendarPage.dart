import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mainproject/HomePage.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalenderPage extends StatefulWidget {
  const CalenderPage({Key? key}) : super(key: key);

  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  CalendarView day = CalendarView.day;
  CalendarView month = CalendarView.month;
  CalendarView schedule = CalendarView.schedule;
  CalendarView view = CalendarView.day;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                        child: Column(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text('Switch to month view')),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                view = CalendarView.day;
                              });
                            },
                            child: Text('Switch to day view'))
                      ],
                    ))
                  ])
        ]),
        body: SafeArea(
            child: Container(
                margin: EdgeInsets.only(top: 10),
                child: SfCalendar(
                  view: view,
                  allowAppointmentResize: true,
                  allowDragAndDrop: true,
                  allowViewNavigation: true,

                ))),
        drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
                child: Text('Options'), curve: Curves.easeInOutCubicEmphasized),
            FloatingActionButton(onPressed: (){})
          ],
        )));
  }
}

class ScheduleDataSource extends CalendarDataSource {
  ScheduleDataSource(List<Schedule> source) {}
}

class Schedule {}
