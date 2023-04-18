// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:mainproject/login.dart';
//
// class Homepage2 extends StatefulWidget {
//   const Homepage2({Key? key}) : super(key: key);
//
//   @override
//   State<Homepage2> createState() => _Homepage2State();
// }
//
// class _Homepage2State extends State<Homepage2> {
//   @override
//   Widget build(BuildContext context) {
//
//     List<String> months = [
//       'January',
//       'February',
//       'March',
//       'April',
//       'May',
//       'June',
//       'July',
//       'August',
//       'September',
//       'October',
//       'November',
//       'December'
//     ];
//     double maxHeight = MediaQuery.of(context).size.height;
//     double maxWidth = MediaQuery.of(context).size.width;
//     DateTime date = DateTime.now();
//     int month = date.month;
//     int today = date.day;
//     int year = date.year;
//     String CurrentTime = DateFormat('hh:mm a').format(DateTime.now());
//     String Time = "${date.hour} : ${date.minute}";
//     FirebaseAuth _auth = FirebaseAuth.instance;
//     User? user = _auth.currentUser;
//     String? userName = user?.displayName;
//
//     return Scaffold(
//         body: Container(
//             height: maxHeight,
//             width: maxWidth,
//             decoration: const BoxDecoration(
//                 image: DecorationImage(
//                     fit: BoxFit.cover,
//                     image: AssetImage('lib/asset/images/peakpx.jpg'))),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(margin: EdgeInsets.only(top: 100,left: 25),alignment: Alignment.centerLeft,child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children:  [
//                     Text("Welcome, $userName ",style: TextStyle(fontSize: 36),),
//                     const SizedBox(height: 15,),
//                     Text("$today, ${months[month-1]}, $year",style: const TextStyle(fontSize: 20)),
//                     const SizedBox(height: 20),
//                     //search bar code minimized and created a reusable widget
//                     SearchBar(MediaQuery.of(context).size.width/1.2),
//                     const SizedBox(height: 20,),
//                     EventsCalender(MediaQuery.of(context).size.width/1.2, CurrentTime)
//                   ],
//                 )),
//
//                 //menubutton with functionality as modalbottomsheet
//                 menuButton(),
//               ],
//             )));
//   }
//
//   Container menuButton() {
//     return Container(
//         margin: EdgeInsets.only(bottom: 20),
//         alignment: Alignment.bottomCenter,
//         child: FloatingActionButton(
//             backgroundColor: Color(0xff52384F),
//             onPressed: () {
//               showModalBottomSheet(
//                 backgroundColor: Colors.pinkAccent,
//                   context: context,
//                   builder: (BuildContext context) => Container(
//                     height: 350,
//                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
//                     child: Column(
//                           children: [Text("data")],
//                         ),
//                   ));
//             }));
//   }
// }
//
// Container SearchBar(double widths){
//   return Container(
//       padding: const EdgeInsets.only(top: 10, bottom: 10),
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//           color: const Color(0xffD39393).withOpacity(0.4),
//           borderRadius: BorderRadius.circular(20)),
//       width: widths,
//       child: TextFormField(
//         style: const TextStyle(fontSize: 20, color: Colors.black45),
//         textAlign: TextAlign.center,
//         decoration: const InputDecoration(
//             hintText: '🔍 search',
//             hintStyle: TextStyle(fontSize: 25),
//             border: InputBorder.none),
//       ));
// }
//
// Container EventsCalender(double eventWidth, String time){
//   return Container(
//       alignment: Alignment.center,
//       padding: EdgeInsets.only(top: 10, bottom: 10),
//       decoration: BoxDecoration(
//           color: Color(0xff8D7C83).withOpacity(0.6),
//           borderRadius: BorderRadius.circular(20)),
//       width: eventWidth,
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Image(image: AssetImage(
//                   'lib/asset/icons/notification.png')),
//               Text(
//                 '    Activities today   $time',
//                 style: const TextStyle(fontSize: 18, color: Colors
//                     .black54),
//               )
//             ],
//           ),
//           const SizedBox(height: 30,),
//           const Text('No events today'),
//         ],
//       ));
// }