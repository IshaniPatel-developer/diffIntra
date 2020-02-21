import 'package:diffintra/Models/userModel.dart';
import 'package:diffintra/services/authentication.dart';
import 'package:diffintra/utils/DBHelper.dart';
import 'package:diffintra/utils/colorConstant.dart' as colorConstant;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:diffintra/utils/boolConstants.dart' as boolean;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key, this.auth, this.loginCallback}) : super(key: key);
  final BaseAuth auth;
  final VoidCallback loginCallback;

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  UserModel userModel = UserModel('', '', '', '');
  DatabaseMethods db = DatabaseMethods();
  bool _showPass = true;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final myFormkey = GlobalKey<FormState>();
  final _emaiInputController = TextEditingController();
  final _passwordInputController = TextEditingController();

  bool isLoading = false;

  // ignore: unused_field
  String _email, _pass;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _with = MediaQuery.of(context).size.width;
    print("Hight::$_height and width::$_with");

    List<Widget> _buildForm(BuildContext context) {
      var listWidget = ListView(
          shrinkWrap: true,
          children: <Widget>[
        Column(
          children: <Widget>[
            Container(
                height: 155,
                child: Padding(
                  padding: EdgeInsets.only(top: 75),
                  child: Center(
                    child: Image.asset("assets/images/logo.png"),
                  ),
                )),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                "Differenz Intranet",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Welcome",
                          style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                              color: colorConstant.fontColor),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Enter your credencial to connect",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: colorConstant.credencialColor),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Form(
                      key: myFormkey,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text("Email"),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              obscureText: false,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "User Name is Required";
                                }
                                return null;
                              },
                              controller: _emaiInputController,
                              onChanged: (val) => _email = val,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  hintText: "Enter Email",
                                  prefixIcon: Icon(Icons.mail)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Password",
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              obscureText: _showPass,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Password field is empty";
                                }
                                return null;
                              },
                              onChanged: (val) => _pass = val,
                              controller: _passwordInputController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                hintText: "Enter Password",
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
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ButtonTheme(
                              height: 50,
                              minWidth: MediaQuery.of(context).size.width,
                              child: RaisedButton(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: "Segoe UI",
                                      fontWeight: FontWeight.bold),
                                ),
                                color: colorConstant.loginButtonColor,
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(20.0)),
                                onPressed: () async {
                                  int flag = 0;
                                  if (myFormkey.currentState.validate()) {
                                    setState(() {
                                      boolean.isLoading=false;
                                    });
                                     db.signIn(_emaiInputController.text, _passwordInputController.text, context)  ;
                                      /*  .whenComplete(() {
                                      setState(() {
                                        isLoading = false;
                                      });
                                    })*/


//                                    await db.signIn(_email, _pass, context).then((user){
//
//                                      Navigator.pushReplacementNamed(
//                                          context, "/home");
//                                    }).catchError((e){/**/
//                                      setState(() {
//                                        isLoading = false;
//                                      });
//                                    });

//                                      FirebaseAuth.instance
//                                          .signInWithEmailAndPassword(
//                                              email: _emaiInputController.text,
//                                              password:
//                                                  _passwordInputController.text)
//                                          .then((currentUser) => Firestore
//                                              .instance
//                                              .collection("users")
//                                              .document(currentUser.user.uid)
//                                              .get()
//                                              .then((DocumentSnapshot result) {
//                                                  Navigator.pushReplacement(
//                                                      context,
//                                                      MaterialPageRoute(
//                                                          builder: (context) =>
//                                                              HomePageScreen()));
//                                              })
//                                              .catchError((err){ print("Exception catch 1 ::$err");
//                                      setState(() {
//                                        isLoading = false;
//                                      });
//                                              }))
//                                          .catchError((a){print(a.toString());
//                                      setState(() {
//                                        isLoading = false;
//                                      });});
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("New User?",
                                    style: TextStyle(fontSize: 18)),
                                GestureDetector(
                                  onTap: () {
                                    print(boolean.isLoading);
                                    Navigator.of(context)
                                        .pushReplacementNamed("/signUp");
                                  },
                                  child: Text(
                                    "click here",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                )
                              ],
                            ),
//                            ButtonTheme(
//                              height: 50,
//                              minWidth: MediaQuery.of(context).size.width,
//                              child: RaisedButton(
//                                child: Text(
//                                  "Signup",
//                                  style: TextStyle(
//                                      color: Colors.white,
//                                      fontSize: 20,
//                                      fontFamily: "Segoe UI",
//                                      fontWeight: FontWeight.bold),
//                                ),
//                                color: colorConstant.loginButtonColor,
//                                shape: new RoundedRectangleBorder(
//                                    borderRadius:
//                                        new BorderRadius.circular(20.0)),
//                                onPressed: () {
//                                  Navigator.of(context).pushNamed("/signUp");
//                                },
//                              ),
//                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ]);

      var l = new List<Widget>();
      l.add(listWidget);

      if (isLoading) {
        var modal = new Stack(
          children: [
            new Opacity(
              opacity: 0.3,
              child: const ModalBarrier(dismissible: false, color: Colors.grey),
            ),
            new Center(
              child: new CupertinoActivityIndicator(
                radius: 20,
              ),
            ),
          ],
        );
        l.add(modal);
      }
      return l;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
      ),
      body: Builder(
        builder: (context) => Stack(
          children: _buildForm(context),
        ),
      ),
    );
  }

  Future<String> signIn(String email, String password) async {
    AuthResult result = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    return user.uid;
  }
}
