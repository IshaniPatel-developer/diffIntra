import 'package:diffintra/loginResistration/loginScreen.dart';
import 'package:diffintra/services/authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:diffintra/utils/colorConstant.dart' as colorConstant;
import 'package:flutter/material.dart';
import 'package:diffintra/utils/sizeConstants.dart' as sizeConstant;

class HomePageScreen extends StatefulWidget {
  HomePageScreen({Key key, this.auth, this.logoutCallback, this.userId}) : super(key: key);
  final BaseAuth auth;
  final VoidCallback logoutCallback;
  final String userId;


  @override
  _HomePageScreenState createState() => _HomePageScreenState();



}

class _HomePageScreenState extends State<HomePageScreen> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _isTab;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(size);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    (MediaQuery.of(context).size.width >= 600) ? _isTab = true : _isTab = false;
    return Scaffold(
      key: _scaffoldKey,
        drawer: SizedBox(
          width: _isTab ? width / 1.3 : width / 1.3,
          child: new Drawer(
              child: new ListView(
            children: <Widget>[
              SizedBox(
                height: _isTab ? 400 : 350,
                child: new Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Center(
                              child: new Container(
                                width: _isTab ? width / 4.5 : width / 3,
                                height: _isTab ? 160 : width / 3,
//                        color: Colors.white30,
                                decoration: BoxDecoration(
                                  color: Colors.white30,
                                  border: Border.all(
                                      color: Colors.black26,
                                      width: 1.0,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.only(
                                    topLeft: _isTab
                                        ? Radius.circular(10.0)
                                        : Radius.circular(10.0),
                                    topRight: _isTab
                                        ? Radius.circular(10.0)
                                        : Radius.circular(10.0),
                                    bottomLeft: _isTab
                                        ? Radius.circular(10.0)
                                        : Radius.circular(10.0),
                                    bottomRight: _isTab
                                        ? Radius.circular(30.0)
                                        : Radius.circular(25.0),
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white,
                                        width: 8.0,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.only(
                                      topLeft: _isTab
                                          ? Radius.circular(10.0)
                                          : Radius.circular(10.0),
                                      topRight: _isTab
                                          ? Radius.circular(10.0)
                                          : Radius.circular(10.0),
                                      bottomLeft: _isTab
                                          ? Radius.circular(10.0)
                                          : Radius.circular(10.0),
                                      bottomRight: _isTab
                                          ? Radius.circular(30.0)
                                          : Radius.circular(25.0),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/logo.png"),
                                      fit: BoxFit.cover,
                                    ),
//                              image: new DecorationImage(
//                                image: new AssetImage('assets/images/logo.png'),
//                              )
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      // _openBottomSheet();
                                    },
                                  ),
                                ),
                              ),
                            ),
//                                Positioned(
//                                  right: 140,
//                                  top: 345,
//                                  child: SizedBox(
//
//                                    width: 30,
//                                    child: FloatingActionButton(
//                                      child: Text("+",style:TextStyle(fontSize: 24),), onPressed: () {},
//                                    ),
//                                  ),
//                                ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Jessica Guerro",
                          style: TextStyle(
                            fontFamily: 'SegoeUI',
                            fontSize: _isTab ? 23 : 18,
                            color: colorConstant.fontColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        ButtonTheme(
                          minWidth: width / 2,
                          height: _isTab ? 60.0 : 40.0,
                          child: OutlineButton(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(15.0),
                            ),
                            borderSide: BorderSide(
                              color: colorConstant.fontColor,
                              //Color of the border
                              style: BorderStyle.solid,
                              //Style of the border
                              width: 0.8, //width of the border
                            ),
                            child: Text(
                              "View Profile",
                              style: TextStyle(
                                fontFamily: 'SegoeUI',
                                fontSize: _isTab ? 18 : 14,
                                color: colorConstant.fontColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed('/viewProfile');
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: _isTab ? 30 : 0,
              ),
              Padding(
                padding: _isTab
                    ? EdgeInsets.only(left: 20.0)
                    : EdgeInsets.only(left: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: colorConstant.fontColor,
                    size: _isTab ? 40 : 25,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(
                      fontFamily: 'SegoeUI',
                      fontSize: _isTab ? 24 : 18,
                      color: colorConstant.fontColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/home');
                  },
                ),
              ),
              SizedBox(
                height: _isTab ? 30 : 0,
              ),
              Padding(
                padding: _isTab
                    ? EdgeInsets.only(left: 20.0)
                    : EdgeInsets.only(left: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.vpn_key,
                    color: colorConstant.fontColor,
                    size: _isTab ? 40 : 25,
                  ),
                  title: Text(
                    "Change Password",
                    style: TextStyle(
                      fontFamily: 'SegoeUI',
                      fontSize: _isTab ? 24 : 18,
                      color: colorConstant.fontColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/changePassword');
                  },
                ),
              ),
            ],
          )),
        ),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(_isTab ? 120.0 : 90),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(color: Colors.black12, spreadRadius: 5, blurRadius: 2)
            ]),
            width: MediaQuery.of(context).size.width,
            height: _isTab ? 120 : 100,
            child: Container(
              color: colorConstant.appBarColor,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 2,
                        child: IconButton(
                          icon: Icon(Icons.format_list_bulleted,
                              size: _isTab ? 35 : 25,
                              color: colorConstant.fontColor),
                          onPressed: () {
                            _scaffoldKey.currentState.openDrawer();
                          },
                        )),
                    Expanded(
                      flex: 8,
                      child: Text(
                        "Home",
                        style: TextStyle(
                          fontFamily: 'SegoeUI',
                          fontSize: _isTab ? 34 : 25,
                          color: colorConstant.fontColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: GestureDetector(
                        onTap: () {
                          _firebaseAuth.signOut();
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                              (_) => false);
                        },
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.power_settings_new,
                            color: colorConstant.fontColor,
                            size: 30,
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: _isTab
              ? EdgeInsets.fromLTRB(50, 50, 50, 0.0)
              : EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: _isTab ? width - 600 : width / 3,
                  width: width,
                  // color: Colors.pinkAccent,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.green[100],
                              borderRadius: new BorderRadius.only(
                                topLeft: _isTab
                                    ? Radius.circular(20.0)
                                    : Radius.circular(10.0),
                                topRight: _isTab
                                    ? Radius.circular(20.0)
                                    : Radius.circular(10.0),
                                bottomLeft: _isTab
                                    ? Radius.circular(20.0)
                                    : Radius.circular(10.0),
                                bottomRight: _isTab
                                    ? Radius.circular(40.0)
                                    : Radius.circular(25.0),
                              )),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: colorConstant.appBarColor,
                                    borderRadius: new BorderRadius.only(
                                      topLeft: _isTab
                                          ? Radius.circular(20.0)
                                          : Radius.circular(10.0),
                                      topRight: _isTab
                                          ? Radius.circular(20.0)
                                          : Radius.circular(10.0),
                                      bottomLeft: _isTab
                                          ? Radius.circular(20.0)
                                          : Radius.circular(10.0),
                                      bottomRight: _isTab
                                          ? Radius.circular(40.0)
                                          : Radius.circular(25.0),
                                    )),
                                height: _isTab ? 150 : 70,
                                width: 290,
                                child: Center(
                                  child: Icon(
                                    Icons.contacts,
                                    size: _isTab ? 80 : 40,
                                    color: colorConstant.fontColor,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: _isTab ? 9 : 8,
                              ),
                              Text(
                                "Running Interviews",
                                style: TextStyle(
                                  fontFamily: "SegoeUI",
                                  fontSize: _isTab ? 20 : 12,
                                  fontWeight: FontWeight.bold,
                                  color: colorConstant.labelFontColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 3,
                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed("/addCandidate");
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.green[100],
                                borderRadius: new BorderRadius.only(
                                  topLeft: _isTab
                                      ? Radius.circular(20.0)
                                      : Radius.circular(10.0),
                                  topRight: _isTab
                                      ? Radius.circular(20.0)
                                      : Radius.circular(10.0),
                                  bottomLeft: _isTab
                                      ? Radius.circular(20.0)
                                      : Radius.circular(10.0),
                                  bottomRight: _isTab
                                      ? Radius.circular(40.0)
                                      : Radius.circular(25.0),
                                )),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: colorConstant.appBarColor,
                                      borderRadius: new BorderRadius.only(
                                        topLeft: _isTab
                                            ? Radius.circular(20.0)
                                            : Radius.circular(10.0),
                                        topRight: _isTab
                                            ? Radius.circular(20.0)
                                            : Radius.circular(10.0),
                                        bottomLeft: _isTab
                                            ? Radius.circular(20.0)
                                            : Radius.circular(10.0),
                                        bottomRight: _isTab
                                            ? Radius.circular(40.0)
                                            : Radius.circular(25.0),
                                      )),
                                  height: _isTab ? 150 : 70,
                                  width: 290,
                                  child: Center(
                                    child: Icon(
                                      Icons.person_add,
                                      size: _isTab ? 80 : 40,
                                      color: colorConstant.fontColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: _isTab ? 9 : 8,
                                ),
                                Text(
                                  "Add Candidates",
                                  style: TextStyle(
                                    fontFamily: "SegoeUI",
                                    fontSize: _isTab ? 20 : 12,
                                    fontWeight: FontWeight.bold,
                                    color: colorConstant.labelFontColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: _isTab ? width - 600 : width / 3,
                  width: width,
                  //color: Colors.pinkAccent,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.green[100],
                              borderRadius: new BorderRadius.only(
                                topLeft: _isTab
                                    ? Radius.circular(20.0)
                                    : Radius.circular(10.0),
                                topRight: _isTab
                                    ? Radius.circular(20.0)
                                    : Radius.circular(10.0),
                                bottomLeft: _isTab
                                    ? Radius.circular(20.0)
                                    : Radius.circular(10.0),
                                bottomRight: _isTab
                                    ? Radius.circular(40.0)
                                    : Radius.circular(25.0),
                              )),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: colorConstant.appBarColor,
                                    borderRadius: new BorderRadius.only(
                                      topLeft: _isTab
                                          ? Radius.circular(20.0)
                                          : Radius.circular(10.0),
                                      topRight: _isTab
                                          ? Radius.circular(20.0)
                                          : Radius.circular(10.0),
                                      bottomLeft: _isTab
                                          ? Radius.circular(20.0)
                                          : Radius.circular(10.0),
                                      bottomRight: _isTab
                                          ? Radius.circular(40.0)
                                          : Radius.circular(25.0),
                                    )),
                                height: _isTab ? 150 : 70,
                                width: 290,
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    size: _isTab ? 80 : 40,
                                    color: colorConstant.fontColor,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: _isTab ? 9 : 8,
                              ),
                              Text(
                                "New Candidates",
                                style: TextStyle(
                                  fontFamily: "SegoeUI",
                                  fontSize: _isTab ? 20 : 12,
                                  fontWeight: FontWeight.bold,
                                  color: colorConstant.labelFontColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.green[100],
                              borderRadius: new BorderRadius.only(
                                topLeft: _isTab
                                    ? Radius.circular(20.0)
                                    : Radius.circular(10.0),
                                topRight: _isTab
                                    ? Radius.circular(20.0)
                                    : Radius.circular(10.0),
                                bottomLeft: _isTab
                                    ? Radius.circular(20.0)
                                    : Radius.circular(10.0),
                                bottomRight: _isTab
                                    ? Radius.circular(40.0)
                                    : Radius.circular(25.0),
                              )),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: colorConstant.appBarColor,
                                    borderRadius: new BorderRadius.only(
                                      topLeft: _isTab
                                          ? Radius.circular(20.0)
                                          : Radius.circular(10.0),
                                      topRight: _isTab
                                          ? Radius.circular(20.0)
                                          : Radius.circular(10.0),
                                      bottomLeft: _isTab
                                          ? Radius.circular(20.0)
                                          : Radius.circular(10.0),
                                      bottomRight: _isTab
                                          ? Radius.circular(40.0)
                                          : Radius.circular(25.0),
                                    )),
                                height: _isTab ? 150 : 70,
                                width: 290,
                                child: Center(
                                  child: Icon(
                                    Icons.people,
                                    size: _isTab ? 80 : 40,
                                    color: colorConstant.fontColor,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: _isTab ? 9 : 8,
                              ),
                              Text(
                                "View All Candidates",
                                style: TextStyle(
                                  fontFamily: "SegoeUI",
                                  fontSize: _isTab ? 20 : 12,
                                  fontWeight: FontWeight.bold,
                                  color: colorConstant.labelFontColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /* child: GridView.count(
          childAspectRatio: _isTab ? 16/11 : 18/13,
            crossAxisCount: 2,
            crossAxisSpacing: _isTab ? 40 : 20,
            mainAxisSpacing: _isTab ? 40 : 20,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: new BorderRadius.only(
                    topLeft: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                    topRight: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                    bottomLeft: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                    bottomRight:  _isTab ? Radius.circular(40.0) : Radius.circular(25.0),
                  )
                ),

                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: colorConstant.appBarColor,
                          borderRadius: new BorderRadius.only(
                            topLeft: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                            topRight: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                            bottomLeft: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                            bottomRight:  _isTab ? Radius.circular(40.0) : Radius.circular(25.0),
                          )
                      ),
                      height:_isTab ?  150: 70,
                      width: 290,
                      child: Center(
                        child: Icon(
                          Icons.contacts,
                          size: _isTab ? 80 : 40,
                          color: colorConstant.fontColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: _isTab ?12 : 8,
                    ),
                    Text(
                      "Running Interviews",
                      style: TextStyle(
                        fontFamily: "Segoe UI",
                        fontSize: _isTab ? 20 : 12,
                        fontWeight: FontWeight.bold,
                        color: colorConstant.labelFontColor,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.green[100],
                    borderRadius: new BorderRadius.only(
                      topLeft: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                      topRight: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                      bottomLeft: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                      bottomRight:  _isTab ? Radius.circular(40.0) : Radius.circular(25.0),
                    )
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: colorConstant.appBarColor,
                          borderRadius: new BorderRadius.only(
                            topLeft: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                            topRight: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                            bottomLeft: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                            bottomRight:  _isTab ? Radius.circular(40.0) : Radius.circular(25.0),
                          )
                      ),
                      height: _isTab ? 150 : 70,
                      width: 290,
                      child: Center(
                        child: Icon(
                          Icons.person_add,
                          size: _isTab ? 80 : 40,
                          color: colorConstant.fontColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: _isTab ?12 : 8,
                    ),
                    Text(
                      "Add Candidates",
                      style: TextStyle(
                        fontFamily: "Segoe UI",
                        fontSize: _isTab ? 20 : 12,
                        fontWeight: FontWeight.bold,
                        color: colorConstant.labelFontColor,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.green[100],
                    borderRadius: new BorderRadius.only(
                      topLeft: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                      topRight: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                      bottomLeft: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                      bottomRight:  _isTab ? Radius.circular(40.0) : Radius.circular(25.0),
                    )
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: colorConstant.appBarColor,
                          borderRadius: new BorderRadius.only(
                            topLeft: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                            topRight: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                            bottomLeft: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                            bottomRight:  _isTab ? Radius.circular(40.0) : Radius.circular(25.0),
                          )
                      ),
                      height: _isTab ? 150 : 70,
                      width: 290,

                      child: Center(
                        child: Icon(
                          Icons.add,
                          size:  _isTab ? 80 : 40,
                          color: colorConstant.fontColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: _isTab ? 12 : 8,
                    ),
                    Text(
                      "New Candidates",
                      style: TextStyle(
                        fontFamily: "Segoe UI",
                        fontSize: _isTab ? 20 : 12,
                        fontWeight: FontWeight.bold,
                        color: colorConstant.labelFontColor,
                      ),
                    )
                  ],
                ),

              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.green[100],
                    borderRadius: new BorderRadius.only(
                      topLeft: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                      topRight: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                      bottomLeft: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                      bottomRight:  _isTab ? Radius.circular(40.0) : Radius.circular(25.0),
                    )
                ),
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: colorConstant.appBarColor,
                          borderRadius: new BorderRadius.only(
                            topLeft: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                            topRight: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                            bottomLeft: _isTab ? Radius.circular(20.0) : Radius.circular(10.0),
                            bottomRight:  _isTab ? Radius.circular(40.0) : Radius.circular(25.0),
                          )
                      ),
                      height: _isTab ? 150 : 70,
                      width: 290,

                      child: Center(
                        child: Icon(
                          Icons.people,
                          size: _isTab ? 80 : 40,
                          color: colorConstant.fontColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: _isTab ? 12 : 8,
                    ),
                    Text(
                      "View All Candidates",
                      style: TextStyle(
                        fontFamily: "Segoe UI",
                        fontSize: _isTab ? 20 : 12,
                        fontWeight: FontWeight.bold,
                        color: colorConstant.labelFontColor,
                      ),
                    )
                  ],
                ),

              ),

            ],
        ),*/
        ));
  }
}
