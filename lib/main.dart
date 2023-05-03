import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mainproject/HomePage.dart';
import 'package:mainproject/calendarpage.dart';
import 'package:mainproject/coursePage.dart';
import 'package:mainproject/login.dart';
import 'package:mainproject/test.dart';
import 'package:mainproject/Subjects.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Titillium',
        primarySwatch: Colors.blue,
      ),
      home: HomePage()
    );
  }
}


