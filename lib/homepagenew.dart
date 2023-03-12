import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mainproject/login.dart';

class Homepage2 extends StatefulWidget {
  const Homepage2({Key? key}) : super(key: key);

  @override
  State<Homepage2> createState() => _Homepage2State();
}

class _Homepage2State extends State<Homepage2> {
  @override
  Widget build(BuildContext context) {

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
    double maxHeight = MediaQuery.of(context).size.height;
    double maxWidth = MediaQuery.of(context).size.width;
    DateTime date = DateTime.now();
    int month = date.month;
    int today = date.day;
    int year = date.year;
    FirebaseAuth _auth = FirebaseAuth.instance;
    User? user = _auth.currentUser;
    String? userName = user?.displayName;

    return Scaffold(
        body: Container(
            height: maxHeight,
            width: maxWidth,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('lib/asset/images/peakpx.jpg'))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(margin: EdgeInsets.only(top: 100,left: 25),alignment: Alignment.centerLeft,child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text("Welcome, $userName ",style: TextStyle(fontSize: 36),),
                    SizedBox(height: 15,),
                    Text("$today, ${months[month-1]}, $year",style: const TextStyle(fontSize: 20)),
                  ],
                )),

                //menubutton with functionality as modalbottomsheet
                menuButton(),
              ],
            )));
  }

  Container menuButton() {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton(
            backgroundColor: Color(0xff52384F),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) => Column(
                        children: [Text("data")],
                      ));
            }));
  }
}
