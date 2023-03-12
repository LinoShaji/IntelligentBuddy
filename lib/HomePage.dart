import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mainproject/login.dart';

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
    double maxHeight = MediaQuery
        .of(context)
        .size
        .height;
    double maxWidth = MediaQuery
        .of(context)
        .size
        .width;
    String day = date.day.toString();
    int month = date.month;
    int monthnum = month - 1;
    String year = date.year.toString();
    String CurrentTime = DateFormat('hh:mm a').format(DateTime.now());
    User? user = FirebaseAuth.instance.currentUser;
    String? username = user?.displayName;
    return Scaffold(
      bottomNavigationBar: Container(height: 40,
          color: Color(0xff1D3654),
          child: bottomnavigationButton('lib/asset/icons/menu.png', () {
            showModalBottomSheet(
                context: context, builder: (BuildContext context) => Column(children: [Container(height: 200,child: Text("data"))],));
          })),
      body: Container(
        alignment: Alignment.topLeft,
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        decoration: BoxDecoration(image: isDark ? firstImage : secondImage),
        child: Column(children: [
          // FloatingActionButton(child: Text("signuot"),onPressed: (){_auth.signOut();Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));}),
          // FloatingActionButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));}),
          const SizedBox(
            height: 90,
          ),
          Container(
            margin: EdgeInsets.only(left: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                FloatingActionButton(onPressed: (){FirebaseAuth.instance.signOut();Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));}),
                Container(
                    alignment: Alignment.topLeft,
                    child: Text("Welcome, $username",
                        style: const TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold))),
                const SizedBox(height: 13),
                Container(
                  child: Text("$day ${months[monthnum]} ,$year",
                      style: const TextStyle(fontSize: 20)),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          //seearch box
          Center(
            child: Container(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color(0xffD9D9D9).withOpacity(0.4),
                    borderRadius: BorderRadius.circular(20)),
                width: maxWidth / 1.2,
                child: TextFormField(
                  style: const TextStyle(fontSize: 20, color: Colors.black45),
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
          InkWell(
            child: Container(
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
                        const Image(image: AssetImage(
                            'lib/asset/icons/notification.png')),
                        Text(
                          '    Activities today   $CurrentTime',
                          style: const TextStyle(fontSize: 18, color: Colors
                              .black54),
                        )
                      ],
                    ),
                    const SizedBox(height: 30,),
                    const Text('No events today'),
                  ],
                )),
          ),
        ]),
      ),
    );
  }

  Widget bottomnavigationButton(String icon,  fun) {
    return Container(
        margin: EdgeInsets.only(right: 20),
        child: Container(
            margin: EdgeInsets.only(left: 20),
            child: IconButton(
              onPressed: () => fun,
              icon: Image(image: AssetImage(icon)),
            )));
  }
}

class PoppingContainer extends StatelessWidget {
  const PoppingContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 200, child: Text("Data"),);
  }
}

