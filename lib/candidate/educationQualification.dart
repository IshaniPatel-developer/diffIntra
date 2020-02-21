import 'package:flutter/material.dart';
import 'package:diffintra/utils/colorConstant.dart' as ColorConstant;
import 'package:diffintra/utils/sizeConstants.dart' as sizeConstant;

import 'experienceScreen.dart';

class EducationQualificationScreen extends StatefulWidget {
  @override
  _EducationQualificationScreenState createState() =>
      _EducationQualificationScreenState();
}

class _EducationQualificationScreenState
    extends State<EducationQualificationScreen> {

  bool _isTab;
  double height,width;


  @override
  Widget build(BuildContext context) {

     height = MediaQuery.of(context).size.height;
     width = MediaQuery.of(context).size.width;
    (MediaQuery.of(context).size.width >= 600) ? _isTab = true : _isTab = false;
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Candidate"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: sizeConstant.slPaddingLeft,right: sizeConstant.slPaddingRight),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start ,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "Educational Qulifications",
                                  style: TextStyle(
                                    fontSize: sizeConstant.mediumFont,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                            ],
                          ),
                          SizedBox(
                            height: sizeConstant.sizeBoxHeight,
                          ),

                          Align(
                            alignment: Alignment.topLeft,
                            child: Text("Salary Before Increment"),
                          ),
                          SizedBox(
                            height: sizeConstant.sizeBoxHeight,
                          ),
                          TextFormField(
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            validator: (val) {
                              if (val.isEmpty)
                                return "eneter";
                              else
                                return null;
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      sizeConstant.textfieldRadious),
                                ),
                                hintText: "15200",
                                prefixIcon:
                                Icon(Icons.mobile_screen_share)),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text("Last Increment Date"),
                          ),
                          SizedBox(
                            height: sizeConstant.sizeBoxHeight,
                          ),
                          TextFormField(
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      sizeConstant.textfieldRadious),
                                ),
                                hintText: "12-12-2010",
                                prefixIcon:
                                Icon(Icons.mobile_screen_share)),
                          ),
                          SizedBox(
                            height: sizeConstant.sizeBoxHeight,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text("Salary Before Increment"),
                          ),
                          SizedBox(
                            height: sizeConstant.sizeBoxHeight,
                          ),
                          TextFormField(
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            validator: (val) {
                              if (val.isEmpty)
                                return "eneter";
                              else
                                return null;
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      sizeConstant.textfieldRadious),
                                ),
                                hintText: "15200",
                                prefixIcon:
                                Icon(Icons.mobile_screen_share)),
                          ),
                          SizedBox(
                            height: sizeConstant.sizeBoxHeight,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("Last Increment Date"),
                                    ),
                                    SizedBox(
                                      height: sizeConstant.sizeBoxHeight,
                                    ),
                                    TextFormField(
                                      obscureText: false,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                sizeConstant.textfieldRadious),
                                          ),
                                          hintText: "12-12-2010",
                                          prefixIcon:
                                          Icon(Icons.mobile_screen_share)),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: sizeConstant.sizeBoxHeight,
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("Salary Before Increment"),
                                    ),
                                    SizedBox(
                                      height: sizeConstant.sizeBoxHeight,
                                    ),
                                    TextFormField(
                                      obscureText: false,
                                      keyboardType: TextInputType.number,
                                      validator: (val) {
                                        if (val.isEmpty)
                                          return "eneter";
                                        else
                                          return null;
                                      },
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                sizeConstant.textfieldRadious),
                                          ),
                                          hintText: "15200",
                                          prefixIcon:
                                          Icon(Icons.mobile_screen_share)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: sizeConstant.sizeBoxHeight,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: _isTab ? 60 : 30,
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                        left: sizeConstant.mlPaddingLeft,
                        right: sizeConstant.mlPaddingRight),
                    child: Container(
                      width: width,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: width,
                            height: height / 2.5,
                            decoration: BoxDecoration(
                              color: ColorConstant.gradientColor1,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(sizeConstant.slRedius),
                                topRight:
                                    Radius.circular(sizeConstant.slRedius),
                                bottomLeft:
                                    Radius.circular(sizeConstant.slRedius),
                                bottomRight:
                                    Radius.circular(sizeConstant.xlRedius),
                              ),
                              border: Border.all(
                                color: ColorConstant.credencialColor,
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: _isTab
                                      ? EdgeInsets.only(
                                          left: sizeConstant.mlPaddingLeft,
                                          right: sizeConstant.mlPaddingRight,
                                          top: sizeConstant.mlPaddingTop)
                                      : EdgeInsets.only(
                                          left: sizeConstant.mlPaddingLeft,
                                          right: sizeConstant.mlPaddingRight,
                                          top: sizeConstant.slPaddingTop),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: _isTab ? 2 : 1,
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Heighest Qualification",
                                                  style: TextStyle(
                                                    fontFamily: 'SegoeUI',
//                                              fontSize: _isTab ? 20 : 15,
                                                  ),
                                                )),
                                            TextFormField(
                                              readOnly: true,
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: -10),
                                                  border: InputBorder.none,
                                                  hintStyle: TextStyle(
                                                    fontFamily: 'SegoeUI',
                                                  ),
                                                  hintText: "Michael Cameron",
                                                  icon: Icon(
                                                    Icons.person,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        flex: _isTab ? 2 : 1,
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "University",
                                                  style: TextStyle(
                                                    fontFamily: 'SegoeUI',
//                                              fontSize: _isTab ? 20 : 16,
                                                  ),
                                                )),
                                            TextFormField(
                                              readOnly: true,
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: -10),
                                                  hintStyle: TextStyle(
//                                              fontSize: 18,
                                                    fontFamily: 'SegoeUI',
                                                  ),
                                                  hintText: "Macros Cameron",
                                                  border: InputBorder.none,
                                                  icon: Icon(
                                                    Icons.person,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: _isTab
                                      ? EdgeInsets.only(
                                          left: sizeConstant.mlPaddingLeft,
                                          right: sizeConstant.mlPaddingRight,
                                          top: sizeConstant.mlPaddingTop)
                                      : EdgeInsets.only(
                                          left: sizeConstant.mlPaddingLeft,
                                          right: sizeConstant.mlPaddingRight,
                                          top: sizeConstant.slPaddingTop),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 2,
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Principale Subject",
                                                  style: TextStyle(
                                                    fontFamily: 'SegoeUI',
//                                              fontSize: _isTab ? 20 : 16,
//                                              color:
//                                                  ColorConstant.gradientColor1,
                                                  ),
                                                )),
                                            TextFormField(
                                              readOnly: true,
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: -10),
                                                  hintStyle: TextStyle(
//                                              fontSize: 18,
                                                    fontFamily: 'SegoeUI',
                                                  ),
                                                  hintText:
                                                      'Computer Engineering',
                                                  icon: Icon(
                                                    Icons.contact_mail,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Percentage of Marks Subject",
                                                  style: TextStyle(
                                                    fontFamily: 'SegoeUI',
//                                              fontSize: _isTab ? 20 : 16,
//                                              color:
//                                                  ColorConstant.gradientColor1,
                                                  ),
                                                )),
                                            TextFormField(
                                              readOnly: true,
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: -10),
                                                  hintStyle: TextStyle(
//                                              fontSize: 18,
                                                    fontFamily: 'SegoeUI',
                                                  ),
                                                  hintText: '95',
                                                  icon: Icon(
                                                    Icons.textsms,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: _isTab
                                      ? EdgeInsets.only(
                                          left: sizeConstant.mlPaddingLeft,
                                          right: sizeConstant.mlPaddingRight,
                                          top: sizeConstant.mlPaddingTop)
                                      : EdgeInsets.only(
                                          left: sizeConstant.mlPaddingLeft,
                                          right: sizeConstant.mlPaddingRight,
                                          top: sizeConstant.slPaddingTop),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 2,
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Passing Year",
                                                  style: TextStyle(
                                                    fontFamily: 'SegoeUI',
//                                              fontSize: _isTab ? 20 : 16,
//                                              color:
//                                                  ColorConstant.gradientColor1,
                                                  ),
                                                )),
                                            TextFormField(
                                              readOnly: true,
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: -10),
                                                  hintStyle: TextStyle(
//                                              fontSize: 18,
                                                    fontFamily: 'SegoeUI',
                                                  ),
                                                  hintText: '2010',
                                                  icon: Icon(
                                                    Icons.date_range,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Divider(
                                  height: 1,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: sizeConstant.mlPaddingLeft,
                                      right: sizeConstant.mlPaddingRight),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Icon(
                                        Icons.mode_edit,
                                        size: sizeConstant.mediumFont,
                                        color: Colors.blue,
                                      ),
                                      GestureDetector(
                                        child: Text(
                                          "Edit",
                                          style: TextStyle(
                                              fontSize: sizeConstant.mediumFont,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(
                                        Icons.delete,
                                        size: sizeConstant.mediumFont,
                                        color: Colors.red,
                                      ),
                                      GestureDetector(
                                        child: Text(
                                          "Delete",
                                          style: TextStyle(
                                              fontSize: sizeConstant.mediumFont,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizeConstant.mlPaddingLeft,
                        right: sizeConstant.mlPaddingRight),
                    child: Container(
                      width: width,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: width,
                            height: height / 2.5,
                            decoration: BoxDecoration(
                              color: ColorConstant.gradientColor1,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(sizeConstant.slRedius),
                                topRight:
                                Radius.circular(sizeConstant.slRedius),
                                bottomLeft:
                                Radius.circular(sizeConstant.slRedius),
                                bottomRight:
                                Radius.circular(sizeConstant.xlRedius),
                              ),
                              border: Border.all(
                                color: ColorConstant.credencialColor,
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: _isTab
                                      ? EdgeInsets.only(
                                      left: sizeConstant.mlPaddingLeft,
                                      right: sizeConstant.mlPaddingRight,
                                      top: sizeConstant.mlPaddingTop)
                                      : EdgeInsets.only(
                                      left: sizeConstant.mlPaddingLeft,
                                      right: sizeConstant.mlPaddingRight,
                                      top: sizeConstant.slPaddingTop),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: _isTab ? 2 : 1,
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Heighest Qualification",
                                                  style: TextStyle(
                                                    fontFamily: 'SegoeUI',
//                                              fontSize: _isTab ? 20 : 15,
                                                  ),
                                                )),
                                            TextFormField(
                                              readOnly: true,
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: -10),
                                                  border: InputBorder.none,
                                                  hintStyle: TextStyle(
                                                    fontFamily: 'SegoeUI',
                                                  ),
                                                  hintText: "Michael Cameron",
                                                  icon: Icon(
                                                    Icons.person,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        flex: _isTab ? 2 : 1,
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "University",
                                                  style: TextStyle(
                                                    fontFamily: 'SegoeUI',
//                                              fontSize: _isTab ? 20 : 16,
                                                  ),
                                                )),
                                            TextFormField(
                                              readOnly: true,
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: -10),
                                                  hintStyle: TextStyle(
//                                              fontSize: 18,
                                                    fontFamily: 'SegoeUI',
                                                  ),
                                                  hintText: "Macros Cameron",
                                                  border: InputBorder.none,
                                                  icon: Icon(
                                                    Icons.person,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: _isTab
                                      ? EdgeInsets.only(
                                      left: sizeConstant.mlPaddingLeft,
                                      right: sizeConstant.mlPaddingRight,
                                      top: sizeConstant.mlPaddingTop)
                                      : EdgeInsets.only(
                                      left: sizeConstant.mlPaddingLeft,
                                      right: sizeConstant.mlPaddingRight,
                                      top: sizeConstant.slPaddingTop),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 2,
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Principale Subject",
                                                  style: TextStyle(
                                                    fontFamily: 'SegoeUI',
//                                              fontSize: _isTab ? 20 : 16,
//                                              color:
//                                                  ColorConstant.gradientColor1,
                                                  ),
                                                )),
                                            TextFormField(
                                              readOnly: true,
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: -10),
                                                  hintStyle: TextStyle(
//                                              fontSize: 18,
                                                    fontFamily: 'SegoeUI',
                                                  ),
                                                  hintText:
                                                  'Computer Engineering',
                                                  icon: Icon(
                                                    Icons.contact_mail,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Percentage of Marks Subject",
                                                  style: TextStyle(
                                                    fontFamily: 'SegoeUI',
//                                              fontSize: _isTab ? 20 : 16,
//                                              color:
//                                                  ColorConstant.gradientColor1,
                                                  ),
                                                )),
                                            TextFormField(
                                              readOnly: true,
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: -10),
                                                  hintStyle: TextStyle(
//                                              fontSize: 18,
                                                    fontFamily: 'SegoeUI',
                                                  ),
                                                  hintText: '95',
                                                  icon: Icon(
                                                    Icons.textsms,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: _isTab
                                      ? EdgeInsets.only(
                                      left: sizeConstant.mlPaddingLeft,
                                      right: sizeConstant.mlPaddingRight,
                                      top: sizeConstant.mlPaddingTop)
                                      : EdgeInsets.only(
                                      left: sizeConstant.mlPaddingLeft,
                                      right: sizeConstant.mlPaddingRight,
                                      top: sizeConstant.slPaddingTop),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 2,
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Passing Year",
                                                  style: TextStyle(
                                                    fontFamily: 'SegoeUI',
//                                              fontSize: _isTab ? 20 : 16,
//                                              color:
//                                                  ColorConstant.gradientColor1,
                                                  ),
                                                )),
                                            TextFormField(
                                              readOnly: true,
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: -10),
                                                  hintStyle: TextStyle(
//                                              fontSize: 18,
                                                    fontFamily: 'SegoeUI',
                                                  ),
                                                  hintText: '2010',
                                                  icon: Icon(
                                                    Icons.date_range,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Divider(
                                  height: 1,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: sizeConstant.mlPaddingLeft,
                                      right: sizeConstant.mlPaddingRight),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Icon(
                                        Icons.mode_edit,
                                        size: sizeConstant.mediumFont,
                                        color: Colors.blue,
                                      ),
                                      GestureDetector(
                                        child: Text(
                                          "Edit",
                                          style: TextStyle(
                                              fontSize: sizeConstant.mediumFont,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(
                                        Icons.delete,
                                        size: sizeConstant.mediumFont,
                                        color: Colors.red,
                                      ),
                                      GestureDetector(
                                        child: Text(
                                          "Delete",
                                          style: TextStyle(
                                              fontSize: sizeConstant.mediumFont,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizeConstant.mlPaddingLeft,
                        right: sizeConstant.mlPaddingRight),
                    child: Container(
                      width: width,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: width,
                            height: height / 2.5,
                            decoration: BoxDecoration(
                              color: ColorConstant.gradientColor1,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(sizeConstant.slRedius),
                                topRight:
                                Radius.circular(sizeConstant.slRedius),
                                bottomLeft:
                                Radius.circular(sizeConstant.slRedius),
                                bottomRight:
                                Radius.circular(sizeConstant.xlRedius),
                              ),
                              border: Border.all(
                                color: ColorConstant.credencialColor,
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: _isTab
                                      ? EdgeInsets.only(
                                      left: sizeConstant.mlPaddingLeft,
                                      right: sizeConstant.mlPaddingRight,
                                      top: sizeConstant.mlPaddingTop)
                                      : EdgeInsets.only(
                                      left: sizeConstant.mlPaddingLeft,
                                      right: sizeConstant.mlPaddingRight,
                                      top: sizeConstant.slPaddingTop),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: _isTab ? 2 : 1,
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Heighest Qualification",
                                                  style: TextStyle(
                                                    fontFamily: 'SegoeUI',
//                                              fontSize: _isTab ? 20 : 15,
                                                  ),
                                                )),
                                            TextFormField(
                                              readOnly: true,
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: -10),
                                                  border: InputBorder.none,
                                                  hintStyle: TextStyle(
                                                    fontFamily: 'SegoeUI',
                                                  ),
                                                  hintText: "Michael Cameron",
                                                  icon: Icon(
                                                    Icons.person,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        flex: _isTab ? 2 : 1,
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "University",
                                                  style: TextStyle(
                                                    fontFamily: 'SegoeUI',
//                                              fontSize: _isTab ? 20 : 16,
                                                  ),
                                                )),
                                            TextFormField(
                                              readOnly: true,
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: -10),
                                                  hintStyle: TextStyle(
//                                              fontSize: 18,
                                                    fontFamily: 'SegoeUI',
                                                  ),
                                                  hintText: "Macros Cameron",
                                                  border: InputBorder.none,
                                                  icon: Icon(
                                                    Icons.person,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: _isTab
                                      ? EdgeInsets.only(
                                      left: sizeConstant.mlPaddingLeft,
                                      right: sizeConstant.mlPaddingRight,
                                      top: sizeConstant.mlPaddingTop)
                                      : EdgeInsets.only(
                                      left: sizeConstant.mlPaddingLeft,
                                      right: sizeConstant.mlPaddingRight,
                                      top: sizeConstant.slPaddingTop),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 2,
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Principale Subject",
                                                  style: TextStyle(
                                                    fontFamily: 'SegoeUI',
//                                              fontSize: _isTab ? 20 : 16,
//                                              color:
//                                                  ColorConstant.gradientColor1,
                                                  ),
                                                )),
                                            TextFormField(
                                              readOnly: true,
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: -10),
                                                  hintStyle: TextStyle(
//                                              fontSize: 18,
                                                    fontFamily: 'SegoeUI',
                                                  ),
                                                  hintText:
                                                  'Computer Engineering',
                                                  icon: Icon(
                                                    Icons.contact_mail,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Percentage of Marks Subject",
                                                  style: TextStyle(
                                                    fontFamily: 'SegoeUI',
//                                              fontSize: _isTab ? 20 : 16,
//                                              color:
//                                                  ColorConstant.gradientColor1,
                                                  ),
                                                )),
                                            TextFormField(
                                              readOnly: true,
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: -10),
                                                  hintStyle: TextStyle(
//                                              fontSize: 18,
                                                    fontFamily: 'SegoeUI',
                                                  ),
                                                  hintText: '95',
                                                  icon: Icon(
                                                    Icons.textsms,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: _isTab
                                      ? EdgeInsets.only(
                                      left: sizeConstant.mlPaddingLeft,
                                      right: sizeConstant.mlPaddingRight,
                                      top: sizeConstant.mlPaddingTop)
                                      : EdgeInsets.only(
                                      left: sizeConstant.mlPaddingLeft,
                                      right: sizeConstant.mlPaddingRight,
                                      top: sizeConstant.slPaddingTop),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 2,
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Passing Year",
                                                  style: TextStyle(
                                                    fontFamily: 'SegoeUI',
//                                              fontSize: _isTab ? 20 : 16,
//                                              color:
//                                                  ColorConstant.gradientColor1,
                                                  ),
                                                )),
                                            TextFormField(
                                              readOnly: true,
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: -10),
                                                  hintStyle: TextStyle(
//                                              fontSize: 18,
                                                    fontFamily: 'SegoeUI',
                                                  ),
                                                  hintText: '2010',
                                                  icon: Icon(
                                                    Icons.date_range,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Divider(
                                  height: 1,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: sizeConstant.mlPaddingLeft,
                                      right: sizeConstant.mlPaddingRight),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Icon(
                                        Icons.mode_edit,
                                        size: sizeConstant.mediumFont,
                                        color: Colors.blue,
                                      ),
                                      GestureDetector(
                                        child: Text(
                                          "Edit",
                                          style: TextStyle(
                                              fontSize: sizeConstant.mediumFont,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(
                                        Icons.delete,
                                        size: sizeConstant.mediumFont,
                                        color: Colors.red,
                                      ),
                                      GestureDetector(
                                        child: Text(
                                          "Delete",
                                          style: TextStyle(
                                              fontSize: sizeConstant.mediumFont,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
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
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: ButtonTheme(
            minWidth: MediaQuery.of(context).size.width,
            height: _isTab ? 80.0 : 60.0,
            child: RaisedButton(
              color: ColorConstant.loginButtonColor,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(15.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ExperienceScreen()),
                );
              },
              child: Text(
                "Next",
                style: TextStyle(
                  fontFamily: "SegoeUI",
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

//   _openSimpleDialog(BuildContext context) =>
//     showDialog(
//        context: context,
//        builder: (BuildContext context) {
//          return Dialog(
//            shape: RoundedRectangleBorder(
//                borderRadius:
//                BorderRadius.circular(20.0)), //this right here
//            child: Container(
//              height: MediaQuery.of(context).size.height/1.4,
//              child: Padding(
//                padding: const EdgeInsets.only(left: sizeConstant.slPaddingLeft,right: sizeConstant.slPaddingRight),
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.start ,
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  children: [
//                    SizedBox(
//                      height: sizeConstant.sizeBoxHeight,
//                    ),
//                    TextField(
//                      decoration: InputDecoration(
//                          border: InputBorder.none,
//                          hintText: 'Add New Qualification',
//                        hintStyle: TextStyle(fontSize: sizeConstant.mediumFont,fontWeight: FontWeight.bold)
//                      ),
//                    ),
//                    SizedBox(
//                      height: sizeConstant.sizeBoxHeight,
//                    ),
//                    Align(
//                      alignment: Alignment.topLeft,
//                      child: Text("Salary Before Increment"),
//                    ),
//                    SizedBox(
//                      height: sizeConstant.sizeBoxHeight,
//                    ),
//                    TextFormField(
//                      obscureText: false,
//                      keyboardType: TextInputType.number,
//                      validator: (val) {
//                        if (val.isEmpty)
//                          return "eneter";
//                        else
//                          return null;
//                      },
//                      decoration: InputDecoration(
//                          border: OutlineInputBorder(
//                            borderRadius: BorderRadius.circular(
//                                sizeConstant.textfieldRadious),
//                          ),
//                          hintText: "15200",
//                          prefixIcon:
//                          Icon(Icons.mobile_screen_share)),
//                    ),
//                    Align(
//                      alignment: Alignment.topLeft,
//                      child: Text("Last Increment Date"),
//                    ),
//                    SizedBox(
//                      height: sizeConstant.sizeBoxHeight,
//                    ),
//                    TextFormField(
//                      obscureText: false,
//                      keyboardType: TextInputType.number,
//                      decoration: InputDecoration(
//                          border: OutlineInputBorder(
//                            borderRadius: BorderRadius.circular(
//                                sizeConstant.textfieldRadious),
//                          ),
//                          hintText: "12-12-2010",
//                          prefixIcon:
//                          Icon(Icons.mobile_screen_share)),
//                    ),
//                    SizedBox(
//                      height: sizeConstant.sizeBoxHeight,
//                    ),
//                    Align(
//                      alignment: Alignment.topLeft,
//                      child: Text("Salary Before Increment"),
//                    ),
//                    SizedBox(
//                      height: sizeConstant.sizeBoxHeight,
//                    ),
//                    TextFormField(
//                      obscureText: false,
//                      keyboardType: TextInputType.number,
//                      validator: (val) {
//                        if (val.isEmpty)
//                          return "eneter";
//                        else
//                          return null;
//                      },
//                      decoration: InputDecoration(
//                          border: OutlineInputBorder(
//                            borderRadius: BorderRadius.circular(
//                                sizeConstant.textfieldRadious),
//                          ),
//                          hintText: "15200",
//                          prefixIcon:
//                          Icon(Icons.mobile_screen_share)),
//                    ),
//                    SizedBox(
//                      height: sizeConstant.sizeBoxHeight,
//                    ),
//                    Row(
//                      children: <Widget>[
//                       Expanded(
//                         child: Column(
//                           children: <Widget>[
//                             Align(
//                               alignment: Alignment.topLeft,
//                               child: Text("Last Increment Date"),
//                             ),
//                             SizedBox(
//                               height: sizeConstant.sizeBoxHeight,
//                             ),
//                             TextFormField(
//                               obscureText: false,
//                               keyboardType: TextInputType.number,
//                               decoration: InputDecoration(
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(
//                                         sizeConstant.textfieldRadious),
//                                   ),
//                                   hintText: "12-12-2010",
//                                   prefixIcon:
//                                   Icon(Icons.mobile_screen_share)),
//                             ),
//                           ],
//                         ),
//                       ),
//                        SizedBox(
//                          width: sizeConstant.sizeBoxHeight,
//                        ),
//                        Expanded(
//                          child: Column(
//                            children: <Widget>[
//                              Align(
//                                alignment: Alignment.topLeft,
//                                child: Text("Salary Before Increment"),
//                              ),
//                              SizedBox(
//                                height: sizeConstant.sizeBoxHeight,
//                              ),
//                              TextFormField(
//                                obscureText: false,
//                                keyboardType: TextInputType.number,
//                                validator: (val) {
//                                  if (val.isEmpty)
//                                    return "eneter";
//                                  else
//                                    return null;
//                                },
//                                decoration: InputDecoration(
//                                    border: OutlineInputBorder(
//                                      borderRadius: BorderRadius.circular(
//                                          sizeConstant.textfieldRadious),
//                                    ),
//                                    hintText: "15200",
//                                    prefixIcon:
//                                    Icon(Icons.mobile_screen_share)),
//                              ),
//                            ],
//                          ),
//                        )
//                      ],
//                    ),
//                    SizedBox(
//                      height: sizeConstant.sizeBoxHeight,
//                    ),
//                    Padding(
//                      padding: _isTab
//                          ? EdgeInsets.only(
//                        left: sizeConstant.mlPaddingLeft,
//                        right: sizeConstant.mlPaddingRight,
//                      )
//                          : EdgeInsets.only(
//                        left: sizeConstant.mlPaddingLeft,
//                        right: sizeConstant.mlPaddingRight,
//                      ),
//                      child: ButtonTheme(
//                        minWidth: MediaQuery.of(context).size.width,
//                        height: _isTab ? 60.0 : 50.0,
//                        child: RaisedButton(
//                          color: ColorConstant.loginButtonColor,
//                          shape: RoundedRectangleBorder(
//                            borderRadius: new BorderRadius.circular(15.0),
//                          ),
//                          onPressed: () {
//                            Navigator.push(
//                              context,
//                              MaterialPageRoute(
//                                  builder: (context) => ExperienceScreen()),
//                            );
//                          },
//                          child: Text(
//                            "Finish",
//                            style: TextStyle(
//                              fontFamily: "SegoeUI",
//                              fontSize: 16,
//                              color: Colors.white,
//                              fontWeight: FontWeight.bold,
//                            ),
//                          ),
//                        ),
//                      ),
//                    ),
//
//                  ],
//                ),
//              ),
//            ),
//          );
//        });


}
