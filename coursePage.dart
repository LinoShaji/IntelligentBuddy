import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MainContainer(),);
  }
}

class MainContainer extends StatelessWidget {
  Widget widget;
   MainContainer({
    this.widget = const Text("data"),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('lib/asset/images/calendarbackground.jpg'))),child: widget,);
  }
}
