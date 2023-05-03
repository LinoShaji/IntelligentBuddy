//features to be implemented
//add space for uploading notes, video, images
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Subjects extends StatefulWidget {
  const Subjects({Key? key}) : super(key: key);

  @override
  State<Subjects> createState() => _SubjectsState();
}

class _SubjectsState extends State<Subjects> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;
    User? CurrentUser = FirebaseAuth.instance.currentUser;
    String? username = CurrentUser?.displayName;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black54),
      ),
      body: Container(
        width: maxWidth,
        height: maxHeight,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("lib/asset/images/1.jpg"),
          ),
        ),
        child: ListView(children: [
          Container(
              margin: EdgeInsets.only(left: 30),
              child: Text(
                "Hello, $username",
                style: const TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Titillium',
                    fontStyle: FontStyle.normal),
              )),
          SizedBox(height: 120),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  customContainer(
                      childWidget: Column(
                    children: const [
                      Image(
                        image: AssetImage('lib/asset/images/post-it.png'),
                        height: 70,
                      ),
                      SizedBox(height: 08),
                      Text("Save Todo")
                    ],
                  )),
                  customContainer(
                    childWidget: Column(
                      children: const [
                        Image(
                          image: AssetImage('lib/asset/images/pencil.png'),
                          height: 70,
                        ),
                        SizedBox(
                          height: 08,
                        ),
                        Text("Resources")
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 17),
              customContainer(
                childWidget: const Image(
                    image:
                        AssetImage("lib/asset/images/icons8-search-100.png")),
                containerwidth: 328,
              )
            ],
          ),
        ]),
      ),
      endDrawer: Drawer(),
    );
  }
}

class customContainer extends StatelessWidget {
  Widget childWidget;
  double containerwidth;

  customContainer({
    this.containerwidth = 145,
    this.childWidget = const Text("data"),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.black12),
      alignment: Alignment.center,
      width: containerwidth,
      height: 160,
      child: childWidget,
    );
  }
}
