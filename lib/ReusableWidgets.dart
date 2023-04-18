import 'dart:math';
import 'package:flutter/material.dart';

class SubjectContainer extends StatefulWidget {
  String subjectname;
  final VoidCallback ontap;

  SubjectContainer({required this.ontap,required this.subjectname, Key? key}) : super(key: key);
  final List<Color> _Colors = const [
    Color(0xff7C5383),
    Color(0xffB25D5D),
    Color(0xffB29B5D),
    Colors.white60,
    Colors.amber,
    Colors.cyan
  ];

  @override
  State<SubjectContainer> createState() => _SubjectContainerState();
}

class _SubjectContainerState extends State<SubjectContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      child: Container(
        decoration: BoxDecoration(
            color: widget._Colors[Random().nextInt(widget._Colors.length)],
            borderRadius: const BorderRadius.only(topRight: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),
        width: MediaQuery.of(context).size.width,
        height: 80,
        alignment: Alignment.center,
        child: Text(widget.subjectname,style: TextStyle(fontSize: 25)),
      ),
    );
  }
}


