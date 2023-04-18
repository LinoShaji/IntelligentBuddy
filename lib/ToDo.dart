import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  final List<String> _todolist = <String>[];
  final TextEditingController _todTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void _addTodoItem(String title) {
      setState(() {
        _todolist.add(title);
      });
      _todTextController.clear();
    }

    Widget _buildTodoItem(String title) {
      return ListTile(title: Text(title));
    }

    List<Widget> _getItems(){
      final List<Widget> _todoWidgets = <Widget>[];
      for(String title in _todolist){
        _todoWidgets.add(_buildTodoItem(title));
      }
      return _todoWidgets;
    }
    return Scaffold(
      body: mainWidget(
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Todo",
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 40,
                  fontWeight: FontWeight.w400),
            ),
            Container(height: MediaQuery.of(context).size.height/2,child: ListView(children: _getItems(),)),
            Container(alignment: Alignment.bottomRight,
              child: FloatingActionButton(child: Icon(Icons.add),
                  onPressed: () => showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      context: context,
                      builder: (BuildContext context) => modalSheetBody(
                            Controller: _todTextController,
                            icon: IconButton(
                                onPressed: () {
                                  if(_todTextController.text.isEmpty){
                                    Fluttertoast.showToast(msg: "enter the task");
                                  }
                                  else {_addTodoItem(_todTextController.text);}
                                },
                                // this icon is a widget that is used in the user defined widget modalSheetBody, this widget is the one appearing after the textField
                                icon: const Icon(Icons.add)),
                          ))),
            ),
          ],
        ),
      ),
    );
  }
}

class modalSheetBody extends StatelessWidget {
  TextEditingController Controller;
  void fun;
  Widget icon;

  modalSheetBody({
    required this.Controller,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          margin: const EdgeInsets.only(top: 20),
          child: const Text(
              textAlign: TextAlign.center,
              "Add a task",
              style: TextStyle(fontSize: 20))),
      const SizedBox(height: 20),
      Container(
          margin: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.3,
                child: TextField(
                  controller: Controller,
                  decoration: InputDecoration(
                      hintText: "Enter the task",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              icon
            ],
          )),
    ]);
  }
}

class mainWidget extends StatelessWidget {
  Widget widget;

  mainWidget({super.key, this.widget = const Text("data")});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('lib/asset/images/calendarbackground.jpg'),
              fit: BoxFit.cover)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 10.0, sigmaX: 10.0),
        child: SafeArea(
          child: Container(
              width: 400,
              height: 400,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15)),
              child: widget),
        ),
      ),
    );
  }
}
