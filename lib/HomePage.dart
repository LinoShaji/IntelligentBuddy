import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'misc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

DecorationImage firstImage = const DecorationImage(
    fit: BoxFit.fill, image: AssetImage('lib/asset/icons/indark.jpg'));
DecorationImage secondImage = const DecorationImage(
    fit: BoxFit.cover, image: AssetImage('lib/asset/icons/inlight.jpg'));
bool isDark = true;

class _HomePageState extends State<HomePage> {
  DateTime date = DateTime.now();
  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  @override
  Widget build(BuildContext context) {
    FirebaseAuth _auth = FirebaseAuth.instance;
    double maxHeight = MediaQuery.of(context).size.height;
    double maxWidth = MediaQuery.of(context).size.width;
    String day = date.day.toString();
    int month = date.month;
    int monthnum = month - 1;
    String year = date.year.toString();
    String CurrentTime = DateFormat('hh:mm a').format(DateTime.now());
    return Scaffold(
      bottomNavigationBar: Container(
          color: const Color(0xff2A4666),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              bottomnavigationButton('lib/asset/icons/home.png'),
              bottomnavigationButton('lib/asset/icons/menu.png'),
              bottomnavigationButton('lib/asset/icons/profile.png')
            ],
          )),
      body: Container(
        alignment: Alignment.topLeft,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(image: isDark ? firstImage : secondImage),
        child: Column(children: [
          SizedBox(
            height: 90,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(left: 20, right: 150),
                  alignment: Alignment.center,
                  child: Text("Welcome, Lino",
                      style: TextStyle(
                          fontSize: 36, fontWeight: FontWeight.bold))),
              SizedBox(height: 13),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("$day ${months[monthnum]} ,$year",
                    style: TextStyle(fontSize: 20)),
              )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          //seearch box
          Center(
            child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xffD9D9D9).withOpacity(0.4),
                    borderRadius: BorderRadius.circular(20)),
                width: maxWidth / 1.2,
                child: TextFormField(
                  style: TextStyle(fontSize: 20, color: Colors.black45),
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      hintText: '🔍 search',
                      hintStyle: TextStyle(fontSize: 25),
                      border: InputBorder.none),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                  color: Color(0xffD9D9D9).withOpacity(0.6),
                  borderRadius: BorderRadius.circular(20)),
              width: maxWidth / 1.2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(image: AssetImage('lib/asset/icons/notification.png')),
                      Text(
                        '    Activities today   $CurrentTime',
                        style: const TextStyle(fontSize: 18, color: Colors.black54),
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Text('No events today'),
                ],
              )),
        ]),
      ),
    );
  }

  Widget bottomnavigationButton(String icon,) {
    return Container(
        margin: EdgeInsets.only(right: 20),
        child: Container(
            margin: EdgeInsets.only(left: 20),
            child: IconButton(
              onPressed: (){},
              icon: Image(image: AssetImage(icon)),
            )));
  }
}

Widget Frame2() {
  return CustomPaint(
    painter: RPSCustomPainter(),
    child: Container(height: 400, width: 400, child: Text(" ")),
  );
}
