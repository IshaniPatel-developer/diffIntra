import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class CloudFirebaseExample extends StatefulWidget {
  @override
  _CloudFirebaseExampleState createState() => _CloudFirebaseExampleState();
}

class _CloudFirebaseExampleState extends State<CloudFirebaseExample> {
  FireStoreQueries qr;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    qr=FireStoreQueries();
    _getData();
  }
  _getData()async{
 qr.getdata();
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          title: Text("simple crud operation"),
        ),
        body: Container());
  }
}
class FireStoreQueries{
  List<String>postName=List<String>();
  getdata() async{
    postName.add("");
    Firestore.instance
        .collection('post')
        .snapshots()
        .listen((data) =>
        data.documents.forEach((doc) => print(doc["postName"])));

  }


}
