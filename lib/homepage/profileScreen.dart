import 'package:flutter/material.dart';
import 'package:diffintra/utils/colorConstant.dart' as ColorConstant;
import 'package:flutter/rendering.dart';
class ViewProfileScreen extends StatefulWidget {
  @override
  _ViewProfileScreenState createState() => _ViewProfileScreenState();
}

class _ViewProfileScreenState extends State<ViewProfileScreen> {

  bool _isTab;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    (MediaQuery.of(context).size.width >= 600) ? _isTab = true : _isTab = false;
    return Container(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(
              _isTab ? 120.0 : 80.0),
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 5,
                      blurRadius: 2
                  )]
            ),
            width: MediaQuery.of(context).size.width,
            height:_isTab ? 120 : 100,
            child: Container(
              color: ColorConstant.appBarColor,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex:2,
                        child: IconButton(icon: Icon(Icons.arrow_back,size: _isTab ?35 : 25,color:ColorConstant.fontColor),
                          onPressed: (){
                            Navigator.of(context).pushReplacementNamed('/home');
                          },)
                    ),
                    Expanded(
                      flex: 8,
                      child: Text("View Profile",style: TextStyle(
                        fontFamily: 'SegoeUI',
                        fontSize: _isTab ? 34 : 20,
                        color: ColorConstant.fontColor,
                        fontWeight:FontWeight.bold,
                      ),),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: _isTab ? 60 : 30,
              ),
              Stack(
                children: <Widget>[
                  Center(
                    child: new Container(
                      width: _isTab ? width/4.5 : width/3,
                      height:_isTab ? 160 : width/3,
//                        color: Colors.white30,
                      decoration: BoxDecoration(
                        color: Colors.white30,
                        border: Border.all(
                            color: Colors.black26,
                            width: 1.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.only(
                          topLeft: _isTab ? Radius.circular(10.0) : Radius.circular(10.0),
                          topRight: _isTab ? Radius.circular(10.0) : Radius.circular(10.0),
                          bottomLeft: _isTab ? Radius.circular(10.0) : Radius.circular(10.0),
                          bottomRight:  _isTab ? Radius.circular(30.0) : Radius.circular(25.0),),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white,
                              width: 5.0,
                              style: BorderStyle.solid),
                          borderRadius:
                          BorderRadius.only(
                            topLeft: _isTab ? Radius.circular(10.0) : Radius.circular(10.0),
                            topRight: _isTab ? Radius.circular(10.0) : Radius.circular(10.0),
                            bottomLeft: _isTab ? Radius.circular(10.0) : Radius.circular(10.0),
                            bottomRight:  _isTab ? Radius.circular(30.0) : Radius.circular(25.0),
                          ),
                          image:DecorationImage(
                            image: AssetImage("assets/images/profilePic2.jpeg"),
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
                  Positioned(
                    right: 140,
                    top: 345,
                    child: SizedBox(

                      width: 30,
                      child: FloatingActionButton(
                        child: Text("+",style:TextStyle(fontSize: 24),), onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height:_isTab ? 15 : 10,
              ),
              Text(
                "Jessica Guerro",
                style: TextStyle(
                  fontFamily: 'SegoeUI',
                  fontSize: _isTab ? 23 : 18,
                  color: ColorConstant.fontColor,
                  fontWeight:FontWeight.bold,
                ),
              ),
              SizedBox(
                height: _isTab ? 60 : 30,
              ),
              Padding(
                padding: _isTab ? EdgeInsets.only(left: 50,right: 50) : EdgeInsets.only(left: 20,right: 20) ,
                child: Container(
                  width: width,
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Personal Details",
                          style: TextStyle(
                            fontFamily: "SegoeUI",
                            fontWeight: FontWeight.bold,
                            fontSize: _isTab ? 20 : 15,
                            color: ColorConstant.labelFontColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _isTab ? 20 : 10,
                      ),
                      Container(
                        width: width,
                        height: 200,
                        decoration: BoxDecoration(
                          color: ColorConstant.appBarColor,
                          borderRadius: BorderRadius.only(
                            topLeft: _isTab ? Radius.circular(30.0) : Radius.circular(10.0),
                            topRight: _isTab ? Radius.circular(30.0) : Radius.circular(10.0),
                            bottomLeft: _isTab ? Radius.circular(30.0) : Radius.circular(10.0),
                            bottomRight:  _isTab ? Radius.circular(40.0) : Radius.circular(25.0),
                          ),
                          border: Border.all(
                            color: ColorConstant.labelFontColor,
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: _isTab ? EdgeInsets.only(left: 40,right: 40,top:20) : EdgeInsets.only(left: 20,right: 20,top:20) ,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex:_isTab ? 2 : 2,
                                    child: Column(
                                      children: <Widget>[
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Text("First name",style: TextStyle(
                                              fontFamily: 'SegoeUI',
                                              fontSize: _isTab ? 20 : 12,
                                              color: ColorConstant.labelFontColor,
                                            ),)),
                                        TextFormField(
                                          readOnly: true,
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              contentPadding: EdgeInsets.symmetric(horizontal: -15,vertical: -15),
                                              hintStyle: TextStyle(fontSize: _isTab ? 18 : 12, color: ColorConstant.fontColor, fontFamily: 'SegoeUI',),
                                              hintText: "Michael Cameron",
                                              icon: Container(
                                                transform: Matrix4.translationValues(0.0, -5.0,0.0),
                                                child: Icon(
                                                  Icons.person,
                                                ),
                                              )
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    flex: _isTab ? 2 : 2,
                                    child: Column(
                                      children: <Widget>[
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Text("Last Name",style: TextStyle(
                                              fontFamily: 'SegoeUI',
                                              fontSize: _isTab ? 20 : 12,
                                              color: ColorConstant.labelFontColor,
                                            ),)),
                                        TextFormField(
                                          readOnly: true,
                                          // textAlign: TextAlign.left,
                                          decoration: InputDecoration(
                                              contentPadding: EdgeInsets.symmetric(horizontal: -15,vertical: -15),
                                              hintStyle: TextStyle(fontSize: _isTab ? 18 : 12, color: ColorConstant.fontColor, fontFamily: 'SegoeUI',),
                                              hintText:"Macros Cameron",
                                              border: InputBorder.none,
                                              icon: Container(
                                                transform: Matrix4.translationValues(0.0, -5.0, 0.0),
                                                child: Icon(
                                                  Icons.person,
                                                ),
                                              )
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: _isTab ? EdgeInsets.only(left: 40,right: 40,top:20): EdgeInsets.only(left: 20,top: 10),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex:2,
                                    child: Column(
                                      children: <Widget>[
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Text("Email",style: TextStyle(
                                              fontFamily: 'SegoeUI',
                                              fontSize: _isTab ? 20 : 12,
                                              color: ColorConstant.labelFontColor,
                                            ),)),

                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: TextFormField(
                                            textAlign: TextAlign.left,
                                            readOnly: true,
                                            decoration: InputDecoration(
                                                contentPadding: EdgeInsets.symmetric(horizontal: -15,vertical: -15),
                                                border: InputBorder.none,
                                                hintStyle: TextStyle(fontSize: _isTab ? 18: 14, color: ColorConstant.fontColor, fontFamily: 'SegoeUI'),
                                                hintText: 'michelle@differemnzsystem.com',
                                                icon: Container(
                                                  transform: Matrix4.translationValues(0.0, -5.0, 0.0),
                                                  child: Icon(
                                                    Icons.mail,
                                                  ),
                                                )
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),

                          ],
                        ),

                      ),
                      SizedBox(
                        height: _isTab ? 20 : 10,
                      ),
                      ButtonTheme(
                        minWidth:MediaQuery.of(context).size.width,
                        height: _isTab ? 60.0 : 50.0,
                        child: RaisedButton(
                          color: ColorConstant.fontColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed('/editProfile');
                          },
                          child: Text("Edit Profile",style:
                          TextStyle(
                            fontFamily: "SegoeUI",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: ColorConstant.appBarColor,

                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),


      ),
    );
  }
}