import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool signup = false;

  @override
  Widget build(BuildContext context) {
    FirebaseAuth _auth = FirebaseAuth.instance;
    TextEditingController nameText = TextEditingController();
    TextEditingController emailText = TextEditingController();
    TextEditingController passText = TextEditingController();
    ;
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration:  BoxDecoration(
          gradient:  LinearGradient(colors: [Colors.purpleAccent,Color.fromARGB(255, 29, 221, 163)]),
            image: DecorationImage(
                // colorFilter: ColorFilter.mode(Colors.amber, BlendMode.colorBurn),
                fit: BoxFit.fitHeight,
                image: AssetImage('lib/asset/images/signup.jpeg'))),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          signup = false;
                        });
                      },
                      child: Text('Log-in',
                          style: TextStyle(fontSize: 40, color: Colors.white))),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          signup = true;
                        });
                        print(signup);
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      )),
                  SizedBox(width: 10),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              signup
                  ? Column(
                      children: [
                        loginTextContainer(emailText, "Email"),
                        SizedBox(
                          height: 20,
                        ),
                        loginTextContainer(passText, 'Password'),
                      ],
                    )
                  : Column(children: [
                      loginTextContainer(nameText, 'name'),
                      SizedBox(height: 5),
                      loginTextContainer(emailText, "email"),
                      SizedBox(height: 5),
                      loginTextContainer(passText, 'pasword'),
                SizedBox(height: 10),
                Container(width: 200,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.3)),
                  child: TextButton(onPressed: () {

                  }, child: Text('Signup',style: TextStyle(fontSize: 20,color: Colors.black54),)),
                )
                    ]),
            ]),
          ),
        ),
      )),
    );
  }

  Container loginTextContainer(TextEditingController emailText, String hText) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white.withOpacity(0.3)),
      child: TextFormField(
        textAlign: TextAlign.center,
        controller: emailText,
        decoration: InputDecoration(
            hintText: hText,
            hintStyle: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
  }
}

