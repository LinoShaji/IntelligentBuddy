import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'HomePage.dart';

// todo verifiaction for mail id
// todo password re-entering for verification
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool signup = true;
  TextEditingController PasswordResetEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseAuth _auth = FirebaseAuth.instance;
    TextEditingController nameText = TextEditingController();
    TextEditingController emailText = TextEditingController();
    TextEditingController passText = TextEditingController();
    TextEditingController logpass = TextEditingController();
    TextEditingController logemailText = TextEditingController();
    TextEditingController phonenumber = TextEditingController();

    return Scaffold(
      body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              //adding the background image for the entire page background

                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('lib/asset/images/peakpx.jpg'))),

            //filtering the background image inorder to be blurred

            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    loginbutton(),
                    const SizedBox(
                      width: 20,
                    ),
                    signupbutton(),
                    const SizedBox(width: 10),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                signup
                    ? loginmethod(logemailText, logpass, context)
                    : signupmethod(
                    nameText, emailText, passText, phonenumber, context),
              ]),
            ),
          )),
    );
  }

  AnimatedContainer signupmethod(TextEditingController nameText,
      TextEditingController emailText,
      TextEditingController passText,
      TextEditingController phoneText,
      BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOutCubicEmphasized,
      child: Column(children: [
        loginTextContainer(nameText, 'name'),
        SizedBox(height: 5),
        loginTextContainer(emailText, "email"),
        SizedBox(height: 5),
        loginTextContainer(phoneText, "phone number"),
        SizedBox(height: 5),
        loginTextContainer(passText, 'pasword'),
        SizedBox(height: 10),
        Container(
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(0.3)),
          child: TextButton(
              onPressed: () {
                Signup(
                    name: nameText.text,
                    email: emailText.text,
                    pass: passText.text);
                User? user = FirebaseAuth.instance.currentUser;
                if (user?.email == emailText.text) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                }
              },
              child: const Text(
                'Signup',
                style: TextStyle(fontSize: 20, color: Colors.black54),
              )),
        )
      ]),
    );
  }

  Column loginmethod(TextEditingController logemailText,
      TextEditingController logpass, BuildContext context) {
    return Column(
      children: [
        loginTextContainer(logemailText, "Email"),
        const SizedBox(
          height: 20,
        ),
        loginTextContainer(logpass, 'Password'),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(0.3)),
          child: TextButton(
              onPressed: () {
                signIn(email: logemailText.text, Pass: logpass.text);
                User? user = FirebaseAuth.instance.currentUser;
                if (user != null) {
                  print("${user.email}");
                  Fluttertoast.showToast(msg: "successfully logged in");
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                }
              },
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 20, color: Colors.black54),
              )),
        ),
        TextButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Reset the password"),
                      actions: [
                        Container(
                          color: Colors.amber,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: PasswordResetEmail,
                                decoration: const InputDecoration(
                                    hintText: "enter the email"),
                              ),
                              IconButton(onPressed: () async{
                                try {
                                  await FirebaseAuth.instance.sendPasswordResetEmail(
                                      email: PasswordResetEmail.text);
                                }catch(e){
                                  print("test passed");
                                  String Error = e.toString();
                                  Fluttertoast.showToast(msg: Error);
                                }
                                Navigator.of(context).pop();
                              }, icon: Icon(Icons.check))


                            ],
                          ),
                        ),
                      ],
                    );
                  });
            },
            child: const Text("forgot password?"))
      ],
    );
  }

  InkWell signupbutton() {
    return InkWell(
        onTap: () {
          setState(() {
            signup = false;
          });
          print(signup);
        },
        child: Text(
          'Sign up',
          style: TextStyle(fontSize: 40, color: Colors.white),
        ));
  }

  InkWell loginbutton() {
    return InkWell(
        onTap: () {
          setState(() {
            signup = true;
          });
        },
        child: const Text('Log-in',
            style: TextStyle(fontSize: 40, color: Colors.white)));
  }

  Container loginTextContainer(TextEditingController emailText, String hText) {
    return Container(
      margin: EdgeInsets.only(right: 30, left: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white.withOpacity(0.3)),
      child: TextFormField(
        textAlign: TextAlign.center,
        controller: emailText,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hText,
            hintStyle: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
  }

  Future Signup({String name = "name",
    String email = "email",
    String pass = "pass",
    String phnnum = "12344556"}) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: pass);
      User? user = FirebaseAuth.instance.currentUser;
      //todo remove the depricated function below
      user?.updateDisplayName(name);
      user?.updateDisplayName(name);
    } on FirebaseAuthException catch (e) {
      String toast = e.message.toString();
      Fluttertoast.showToast(msg: toast);
    }
    await FirebaseFirestore.instance
        .collection("users")
        .doc(email)
        .set({'name': name, 'phone number': phnnum});
  }
}

Future signIn(
    {String email = "linoshaji23@gmail.com", String Pass = "12345"}) async {
  try {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: Pass);
    return null;
  } on FirebaseAuthException catch (e) {
    String toast = e.toString();
    Fluttertoast.showToast(msg: toast);
  }
}

Future ResetPassword(String email) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  } on FirebaseAuthException catch (e) {
    String error = e.message.toString();
    Fluttertoast.showToast(msg: error);
  }
}
