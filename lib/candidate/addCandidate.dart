import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:diffintra/utils/colorConstant.dart' as ColorConstant;
import 'package:diffintra/utils/sizeConstants.dart' as sizeConstant;
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import 'educationQualification.dart';

class AddCandidateScreen extends StatefulWidget {
  @override
  _AddCandidateScreenState createState() => _AddCandidateScreenState();
}

class _AddCandidateScreenState extends State<AddCandidateScreen> {
  String dropdownValue = "Select Post";
  DateTime _dateTime = DateTime.now();
  File cameraFile;
  File galleryFile, _image;
  bool maritalStatus = false;
  bool genderStatus = false;
  String genderValue, maritalValue;
  bool _isTab;
  double height,width;

  TextEditingController dobController;
  TextEditingController emailController;
  TextEditingController fullNameController;
  TextEditingController fatherNameController;
  TextEditingController mobileController;
  TextEditingController refMobileController;
  TextEditingController addressController;
  List<String> postName;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    postName = List<String>();
    _getPosts();
    dobController = TextEditingController();
    emailController = TextEditingController();
    fullNameController = TextEditingController();
    fatherNameController = TextEditingController();
    mobileController = TextEditingController();
    refMobileController = TextEditingController();
    addressController = TextEditingController();
  }

  //get posts from firestore collection

  _getPosts() async {
    postName.add("Select Post");
    Firestore.instance
        .collection('post')
//        .where("postName", isEqualTo: "Trainee")
        .snapshots()
        .listen((data) =>
            data.documents.forEach((doc) => postName.add(doc["postName"])));
  }

  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    (MediaQuery.of(context).size.width >= 600) ? _isTab = true : _isTab = false;
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Candidates"),
      ),
      body: ListView(children: <Widget>[
        Container(
//          height: MediaQuery.of(context).size.height - 180.5,
          child: Scrollbar(
            child: SingleChildScrollView(
                child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: new Container(
                    width: 140.0,
                    height: 140.0,
//                        color: Colors.white30,
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      border: Border.all(
                          color: Colors.black26,
                          width: 1.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white,
                              width: 5.0,
                              style: BorderStyle.solid),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0)),
                          image: DecorationImage(
                              image: (_image != null)
                                  ? FileImage(_image)
                                  : NetworkImage(
                                      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg"),
                              fit: BoxFit.cover)
//                              image: new DecorationImage(
//                                image: new AssetImage('assets/images/logo.png'),
//                              )
                          ),
                      child: GestureDetector(
                        onTap: () {
                          _openBottomSheet();
                        },
                      ),
                    ),
                  ),
                ),
//                    Center(
//                      child: Container(
//                        width: 100.0,
//                        height: 100.0,
//                        decoration: BoxDecoration(
////                          shape:BoxShape.circle,
//
//                        ),
//                        color: Colors.white,
//                        child: Container(
//                          decoration: new BoxDecoration(
//                            border: new Border.all(
//                                color: Colors.green,
//                                width: 5.0,
//                                style: BorderStyle.solid
//                            ),),
//                          child: GestureDetector(
//                            onTap: () {
//                                  _openBottomSheet();
//                            },
//                            child:  (_image!=null)? Image.file(_image):Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg",
//                              fit: BoxFit.fitHeight,
//                            ),
//                          ),
//                        ),
//                      ),
//                    ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: sizeConstant.slPaddingLeft,
                      right: sizeConstant.slPaddingLeft,
                      top: 30),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Pesonal Details",
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: sizeConstant.sizeBoxHeight,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text("post Applied For"),
                            ),
                            SizedBox(
                              height: sizeConstant.sizeBoxHeight,
                            ),
                            StreamBuilder<QuerySnapshot>(
                                stream: Firestore.instance
                                    .collection('post')
                                    .snapshots(),
                                builder: (context, snapshot) {
                                  if (!snapshot.hasData)
                                    return const Center(
                                      child:
                                          const CupertinoActivityIndicator(),
                                    );
//                                      var length = snapshot.data.documents.length;
//                                      DocumentSnapshot ds = snapshot.data.documents[length - 1];
//                                      _queryCat = snapshot.data.documents;
                                    return DropdownButtonHideUnderline(
                                      child: Container(
                                        width: MediaQuery.of(context)
                                            .size
                                            .width,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(
                                                  sizeConstant
                                                      .textfieldRadious),
                                          border: Border.all(width: 1),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15, right: 15),
                                          child: DropdownButton<String>(
                                            value: dropdownValue,
                                            icon:
                                                Icon(Icons.arrow_downward),
                                            iconSize: 24,
                                            elevation: 16,
                                            onChanged: (String newValue) {
                                              setState(() {
                                                dropdownValue = newValue;
                                              });
                                            },
//                                              items: snapshot.data.documents
//                                                  .map((
//                                                  DocumentSnapshot document) {
//                                                return new DropdownMenuItem<
//                                                    String>(
//                                                    value: document
//                                                        .data['postName'],
//                                                    child: new Container(
//                                                      decoration: new BoxDecoration(
//                                                          borderRadius: new BorderRadius
//                                                              .circular(5.0)
//                                                      ),
//                                                      height: 50.0,
//                                                      padding: EdgeInsets
//                                                          .fromLTRB(
//                                                          10.0, 2.0, 10.0, 0.0),
//                                                      //color: primaryColor,
//                                                      child:  Padding(
//                                                        padding: const EdgeInsets.only(top: 10),
//                                                        child: Text(document
//                                                            .data['postName'],textAlign: TextAlign.center,
//                                                            style: TextStyle(
//                                                                fontSize: 20)),
//                                                      ),
//                                                    )
//                                                );
//                                              }).toList(),//
                                            items: postName.map<
                                                    DropdownMenuItem<
                                                        String>>(
                                                (String value) {
                                              return DropdownMenuItem<
                                                  String>(
                                                value: value,
                                                child: Text(
                                                  value,
                                                  style: TextStyle(
                                                      fontSize: 20),
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                      ),
                                    );

                                }),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: sizeConstant.slPaddingLeft,
                      right: sizeConstant.slPaddingRight,
                      top: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text("Full Name"),
                            ),
                            SizedBox(
                              height: sizeConstant.sizeBoxHeight,
                            ),
                            TextFormField(
                              obscureText: false,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        sizeConstant.textfieldRadious),
                                  ),
                                  hintText: " Full Name",
                                  prefixIcon: Icon(Icons.person)),
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
                              child: Text("Father's Name"),
                            ),
                            SizedBox(
                              height: sizeConstant.sizeBoxHeight,
                            ),
                            TextFormField(
                              obscureText: false,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        sizeConstant.textfieldRadious),
                                  ),
                                  hintText: " Father's Name",
                                  prefixIcon: Icon(Icons.person)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: sizeConstant.slPaddingLeft,
                      right: sizeConstant.slPaddingRight,
                      top: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text("Mobile No"),
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
                                  hintText: "Mobile Number",
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
                              child: Text("Reference Mobile No"),
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
                                  hintText: "Mobile Number",
                                  prefixIcon:
                                      Icon(Icons.mobile_screen_share)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: sizeConstant.slPaddingLeft,
                      right: sizeConstant.slPaddingRight,
                      top: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text("Email"),
                            ),
                            SizedBox(
                              height: sizeConstant.sizeBoxHeight,
                            ),
                            TextFormField(
                              obscureText: false,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        sizeConstant.textfieldRadious),
                                  ),
                                  hintText: " Email",
                                  prefixIcon: Icon(Icons.mail)),
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
                              child: Text("Reference Name"),
                            ),
                            SizedBox(
                              height: sizeConstant.sizeBoxHeight,
                            ),
                            TextFormField(
                              obscureText: false,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        sizeConstant.textfieldRadious),
                                  ),
                                  hintText: " Reference Name",
                                  prefixIcon: Icon(Icons.person)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: sizeConstant.slPaddingLeft,
                      right: sizeConstant.slPaddingRight,
                      top: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child:
                                  Text("Address \(Present or Parmanent\)"),
                            ),
                            SizedBox(
                              height: sizeConstant.sizeBoxHeight,
                            ),
                            TextFormField(
                              obscureText: false,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        sizeConstant.textfieldRadious),
                                  ),
                                  hintText: " Address",
                                  prefixIcon: Icon(Icons.location_on)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: sizeConstant.slPaddingLeft,
                      right: sizeConstant.slPaddingRight,
                      top: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text("Date Of Birth"),
                            ),
                            SizedBox(
                              height: sizeConstant.sizeBoxHeight,
                            ),
                            TextFormField(
                              controller: dobController,
                              obscureText: false,
                              readOnly: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        sizeConstant.textfieldRadious),
                                  ),
                                  hintText:
                                      "${_dateTime.day}\/${_dateTime.month}\/${_dateTime.year}",
                                  prefixIcon: Icon(Icons.cake),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      _openDatePickerDialog(context);
                                    },
                                    child: Icon(Icons.date_range),
                                  )),
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
                              child: Text("Sex\(Male/Female\)"),
                            ),
                            SizedBox(
                              height: sizeConstant.sizeBoxHeight,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    sizeConstant.textfieldRadious),
                                border: Border.all(
                                    width: 1, color: Colors.black45),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: CupertinoButton(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Text(
                                          'Male',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black),
                                        ),
                                        color: genderStatus
                                            ? Colors.white
                                            : Colors.lightBlueAccent,
                                        onPressed: () => setState(() {
                                          genderStatus = !genderStatus;
                                          genderValue = "male";
                                        }),
                                      ),
                                    ),
                                    Expanded(
                                      child: CupertinoButton(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: new Text(
                                          'Female',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Colors.black),
                                        ),
//                                            shape: new RoundedRectangleBorder(
//                                              borderRadius: new BorderRadius.circular(sizeConstant.textfieldRadious-5),
//                                            ),
                                        color: genderStatus
                                            ? Colors.lightBlueAccent
                                            : Colors.white,
                                        onPressed: () => setState(() {
                                          genderStatus = !genderStatus;
                                          genderValue = "female";
                                        }),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: sizeConstant.slPaddingLeft,
                      right: sizeConstant.slPaddingRight,
                      top: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text("Marital Status"),
                            ),
                            SizedBox(
                              height: sizeConstant.sizeBoxHeight,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      sizeConstant.textfieldRadious),
                                  border: Border.all(
                                      width: 1, color: Colors.black45),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: CupertinoButton(
                                          padding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 5),
                                          child: const Text(
                                            'Married',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black),
                                          ),
                                          color: maritalStatus
                                              ? Colors.white
                                              : Colors.lightBlueAccent,
                                          onPressed: () => setState(() {
                                            maritalStatus = !maritalStatus;
                                            maritalValue = 'Married';
                                          }),
                                        ),
                                      ),
                                      Expanded(
                                        child: CupertinoButton(
                                          padding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 5.0),
                                          child: new Text(
                                            'UnMarried',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black),
                                          ),
//                                            shape: new RoundedRectangleBorder(
//                                              borderRadius: new BorderRadius.circular(sizeConstant.textfieldRadious-5),
//                                            ),
                                          color: maritalStatus
                                              ? Colors.lightBlueAccent
                                              : Colors.white,
                                          onPressed: () => setState(() {
                                            maritalStatus = !maritalStatus;
                                            maritalValue = 'UnMarried';
                                          }),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
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
                              child: Text("Nationality"),
                            ),
                            SizedBox(
                              height: sizeConstant.sizeBoxHeight,
                            ),
                            TextFormField(
                              obscureText: false,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        sizeConstant.textfieldRadious),
                                  ),
                                  hintText: "Indian",
                                  prefixIcon: Icon(Icons.flag)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
          ),
        ),
//        ButtonTheme(
//          height: 45,
//          minWidth: MediaQuery.of(context).size.width,
//          child: Padding(
//            padding: const EdgeInsets.all(sizeConstant.slPaddingLeft),
//            child: RaisedButton(
//              child: Text(
//                "Next",
//                style: TextStyle(
//                    color: Colors.white,
//                    fontSize: 20,
//                    fontFamily: "Segoe UI",
//                    fontWeight: FontWeight.bold),
//              ),
//              color: colors.loginButtonColor,
//              shape: new RoundedRectangleBorder(
//                  borderRadius: new BorderRadius.circular(
//                      sizeConstant.textfieldRadious)),
//              onPressed: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                      builder: (context) => EducationQualificationScreen()),
//                );
//              },
//            ),
//          ),
//        ),
      ]),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child:  ButtonTheme(
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
                      builder: (context) => EducationQualificationScreen()),
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

  _openDatePickerDialog(context) {
//    showDatePicker(
//      context: context,
//      initialDate: DateTime.now(),
//      firstDate: DateTime(2018),
//      lastDate: DateTime(2030),
//      builder: (BuildContext context, Widget child) {
//        return Theme(
//          data: ThemeData.dark(),
//          child: child,
//        );
//      },
//    );
//    Container(
//        height: MediaQuery.of(context).copyWith().size.height / 3,
//        child: CupertinoDatePicker(
//          initialDateTime:new DateTime(2018, 12, 30),
//          onDateTimeChanged: (DateTime newdate) {
//            print(newdate);
//          },
//          use24hFormat: true,
//          maximumDate:  DateTime.now(),
//          minimumYear: 2010,
//          maximumYear: 2020,
//          minuteInterval: 1,
//          mode: CupertinoDatePickerMode.dateAndTime,
//        ));
    showModalBottomSheet(
        context: context,
        builder: (BuildContext builder) {
          return Container(
              height: MediaQuery.of(context).copyWith().size.height / 3,
              child: datetime());
        });
  }

  Widget datetime() {
    return CupertinoDatePicker(
      initialDateTime: DateTime(2018, 12, 30),
      onDateTimeChanged: (DateTime newdate) {
//        print(newdate);
        setState(() {
          _dateTime = newdate;
        });
      },
      use24hFormat: true,
      maximumDate: DateTime.now(),
      minimumYear: 2010,
      maximumYear: 2020,
      minuteInterval: 1,
      mode: CupertinoDatePickerMode.date,
    );
  }

  showDemoActionSheet<T>({BuildContext context, Widget child}) {
    showCupertinoModalPopup<T>(
      context: context,
      builder: (BuildContext context) => child,
    ).then<void>((T value) {
      if (value != null) {
        if (value == 'Camera') {
          imageSelectorCamera();
        }
      }
    });
  }

  _openBottomSheet() {
    showDemoActionSheet<String>(
      context: context,
      child: CupertinoActionSheet(
          title: const Text(
            'Choose Image',
            style: TextStyle(fontSize: 18),
          ),
          actions: <Widget>[
            CupertinoActionSheetAction(
              child: const Text('Camera'),
              onPressed: () {
                imageSelectorCamera();
                Navigator.pop(context, 'Camera');
              },
            ),
            CupertinoActionSheetAction(
              child: const Text('Gallery'),
              onPressed: () {
                Navigator.pop(context, 'Gallery');
                imageSelectorGallery();
              },
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            child: const Text('Cancel'),
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context, 'Cancel');
            },
          )),
    );
  }

  imageSelectorCamera() async {
    try {
      cameraFile = await ImagePicker.pickImage(source: ImageSource.camera);
      print("You selected camera image : " + cameraFile.path);
      _cropImage(cameraFile);
    } catch (e) {
      cameraFile = null;
    }
    setState(() {
      galleryFile = null;
    });
  }

  imageSelectorGallery() async {
    try {
      cameraFile = await ImagePicker.pickImage(source: ImageSource.gallery);
      print("You selected camera image : " + cameraFile.path);
      _cropImage(cameraFile);
    } catch (e) {
      cameraFile = null;
    }
  }

  Future<Null> _cropImage(File imageFile) async {
    File croppedFile = await ImageCropper.cropImage(
        sourcePath: imageFile.path,
        aspectRatioPresets: [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9
        ]);
    setState(() {
      _image = croppedFile;
    });
  }
}
