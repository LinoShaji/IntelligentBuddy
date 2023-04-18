import 'package:flutter/material.dart';
import 'package:mainproject/ReusableWidgets.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  List<Widget> Subjects = [];
  TextEditingController subjectname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: Subjects.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Subjects[index],
                  );
                }),
          ),
          Container(
              padding: const EdgeInsets.only(right: 10, bottom: 10),
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: 100,
                child: FloatingActionButton(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: const Text("Add Subject"),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              title: const Text(
                                  "Enter the details of the subject",
                                  style: TextStyle(fontSize: 18)),
                              actions: [
                                TextFormField(
                                  decoration: const InputDecoration(
                                      hintText: "Enter the Subject name",
                                      border: InputBorder.none),
                                  controller: subjectname,
                                ),
                                IconButton(onPressed: (){setState(() {
                                  Subjects.add(SubjectContainer(ontap: (){},subjectname: subjectname.text));
                                });}, icon: const Icon(Icons.check))
                              ],
                            );
                          });
                    }),
              ))
        ],
      )),
    );
  }
}

//overall architecture
//there is a list "subjects" and a listview.builder which is wrapped inside a column
//inside the listview.builder the items are the listtile which consists of the elements inside the subjects list
//when the user presses the floating action button a widget is created inside the list "subjects" and this reusable widget is being named as the subject container and defined in the dart file ReusableWidget
//as the elements of this listview.builder is the elements of the list subjects the screen renders and shows the newly added subject list
