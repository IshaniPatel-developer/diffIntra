import 'package:flutter/material.dart';
import 'package:diffintra/utils/colorConstant.dart' as ColorConstant;
import 'package:diffintra/utils/sizeConstants.dart' as sizeConstant;
class SalaryDetailsScreen extends StatefulWidget {
  @override
  _SalaryDetailsScreenState createState() => _SalaryDetailsScreenState();
}

class _SalaryDetailsScreenState extends State<SalaryDetailsScreen> {
  bool _isTab;
  double height,width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    (MediaQuery.of(context).size.width >= 600) ? _isTab = true : _isTab = false;
    return Scaffold(
      appBar: AppBar(
        title:Text("Add Candidate")
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height - 140,
            child: Padding(
              padding: EdgeInsets.only(
                top: sizeConstant.mlPaddingTop,
                  left: sizeConstant.mlPaddingLeft,
                  right: sizeConstant.mlPaddingRight),
              child: Container(
                width: width,
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Salary Details",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: sizeConstant.mediumFont),
                      ),
                    ),
                    SizedBox(
                      height: sizeConstant.sizeBoxHeight,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("Current Salary per month"),
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
                                    hintText: "20000",
                                    prefixIcon:
                                    Icon(Icons.mobile_screen_share)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("Expected Salary per month"),
                              ),
                              SizedBox(
                                height: sizeConstant.sizeBoxHeight,
                              ),
                              TextFormField(
                                obscureText: false,
                                keyboardType: TextInputType.number,
                                validator: (val) {
                                  if (val.isEmpty)
                                    return "25000";
                                  else
                                    return null;
                                },
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          sizeConstant.textfieldRadious),
                                    ),
                                    hintText: "25000",
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
                          width: 10,
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
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("Notice Period"),
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
                                    hintText: "month",
                                    prefixIcon:
                                    Icon(Icons.mobile_screen_share)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(),
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
          ),

        ],
      ),
      bottomSheet: Container(
        child: Padding(
          padding: _isTab
              ? EdgeInsets.only(
            left: sizeConstant.mlPaddingLeft,
            right: sizeConstant.mlPaddingRight,
            bottom: 12
          )
              : EdgeInsets.only(
            left: sizeConstant.mlPaddingLeft,
            right: sizeConstant.mlPaddingRight,
              bottom: 12
          ),

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
                      builder: (context) => SalaryDetailsScreen()),
                );
              },
              child: Text(
                "Finish",
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
}
