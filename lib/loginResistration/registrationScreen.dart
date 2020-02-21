import 'package:diffintra/loginResistration/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:diffintra/utils/validationFunctions.dart' as validation;
import 'package:diffintra/utils/colorConstant.dart' as colors;

//import 'package:diffintra/utils/stringConstant.dart' as constant;
class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final myFormKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final emailController = TextEditingController();

  String _pass, _confPass, _email, _firstName, _lastName;
  bool _confirm = false, _showPass = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    refereshForm();
  }

  refereshForm() {
    passwordController.clear();
    emailController.clear();
    confirmPasswordController.clear();
    firstNameController.clear();
    lastNameController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Center(
              child: Form(
                key: myFormKey,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          controller: firstNameController,
                          obscureText: false,
                          onChanged: (val) {
                            _firstName = firstNameController.text;
                          },
                          decoration: InputDecoration(
                              hintText: "Enter first Name",
                              hintStyle: TextStyle(fontSize: 20),
                              contentPadding: EdgeInsets.only(left: 20),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          controller: lastNameController,
                          obscureText: false,
                          onChanged: (val) {
                            _lastName = lastNameController.text;
                          },
                          decoration: InputDecoration(
                              hintText: "Enter Last Name",
                              hintStyle: TextStyle(fontSize: 20),
                              contentPadding:
                                  EdgeInsets.only(left: 20, top: 20),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          controller: emailController,
                          obscureText: false,
                          onChanged: (val) {
                            _email = emailController.text;
                          },
                          validator: (val) => validation.validEmail(val),
                          decoration: InputDecoration(
                              hintText: "Enter email Id",
                              hintStyle: TextStyle(fontSize: 20),
                              contentPadding: EdgeInsets.only(left: 20),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: _showPass,
                          onChanged: (val) {
                            _pass = passwordController.text;
                          },
                          validator: (val) => validation.validPassword(val),
                          decoration: InputDecoration(
                              hintText: "Enter Password",
                              hintStyle: TextStyle(fontSize: 20),
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  if (_showPass) {
                                    setState(() {
                                      _showPass = false;
                                    });
                                  } else {
                                    setState(() {
                                      _showPass = true;
                                    });
                                  }
                                },
                                child: (_showPass)
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                              ),
                              contentPadding: EdgeInsets.only(left: 20),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          controller: confirmPasswordController,
                          obscureText: true,
                          onChanged: (val) {
                            _confPass = confirmPasswordController.text;
                            _checkConfirmPassword();
                          },
                          validator: (val) =>
                              validation.validconfirmPassword(val),
                          decoration: InputDecoration(
                              hintText: "Enter Confirm Password",
                              prefixIcon: Icon(Icons.lock),
                              hintStyle: TextStyle(fontSize: 20),
                              suffixIcon: _confirm
                                  ? Icon(
                                      Icons.check,
                                      color: Colors.green,
                                    )
                                  : GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          confirmPasswordController.text = "";
                                        });
                                      },
                                      child: Icon(
                                        Icons.clear,
                                        color: Colors.red,
                                      ),
                                    ),
                              contentPadding: EdgeInsets.only(left: 20),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0))),
                        ),
                      ),
                      ButtonTheme(
                        height: 50,
                        minWidth: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          child: Text(
                            "Register",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Segoe UI",
                                fontWeight: FontWeight.bold),
                          ),
                          color: colors.loginButtonColor,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20.0)),
                          onPressed: () {
                            _registerUser();
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Already have Acoount?",style: TextStyle(fontSize: 18),),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).pushReplacementNamed("/login");
                            },
                            child: Text("Log In",textAlign: TextAlign.left,style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 18),
                            ),
                          )

                        ],
                      ),
//                      ButtonTheme(
//                        height: 50,
//                        minWidth: MediaQuery.of(context).size.width,
//                        child: RaisedButton(
//                          child: Text(
//                            "Login",
//                            style: TextStyle(
//                                color: Colors.white,
//                                fontSize: 20,
//                                fontFamily: "Segoe UI",
//                                fontWeight: FontWeight.bold),
//                          ),
//                          color: colors.loginButtonColor,
//                          shape: new RoundedRectangleBorder(
//                              borderRadius: new BorderRadius.circular(20.0)),
//                          onPressed: () {
//                            Navigator.pushAndRemoveUntil(
//                                context,
//                                MaterialPageRoute(
//                                    builder: (context) => LoginScreen()),
//                                (_) => false);
//                          },
//                        ),
//                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _checkConfirmPassword() {
    if (_pass == _confPass && _pass != null && _confPass != null) {
      setState(() {
        _confirm = true;
      });
    } else {
      setState(() {
        _confirm = false;
      });
    }
  }

  void _registerUser() {
    if (myFormKey.currentState.validate()) {
      if (_pass == _confPass) {
        try {
          FirebaseAuth.instance
              .createUserWithEmailAndPassword(
                  email: emailController.text,
                  password: passwordController.text)
              .then((currentUser) => Firestore.instance
                  .collection("users")
                  .document(currentUser.user.uid)
                  .setData({
                    "firstName": firstNameController.text,
                    "lastName": lastNameController.text,
                    "emailId": emailController.text,
                  })
                  .then((result) => {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                            (_) => false),
                        firstNameController.clear(),
                        lastNameController.clear(),
                        emailController.clear(),
                        passwordController.clear(),
                      })
                  .catchError((err) => print(err)))
              .catchError((err) => print(err));
        } catch (error) {
          print("Catched Exception::$error");
        }
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Error"),
              content: Text("The passwords do not match"),
              actions: <Widget>[
                FlatButton(
                  child: Text("Close"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          },
        );
      }
    }
  }
}
