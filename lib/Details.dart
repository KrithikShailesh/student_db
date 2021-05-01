import 'dart:core';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class Screen extends StatefulWidget {
  Screen({this.app});
  final FirebaseApp app;
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {

  final referenceDatabase=FirebaseDatabase.instance;
  final name='Name';
  final nameController=TextEditingController();
  final rollno='Roll No';
  final rollnoController=TextEditingController();
  final cgpa='CGPA';
  final cgpaController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ref=referenceDatabase.reference();

    void addData(String name,String roll,String cgpa){
      ref.push().set({'Name':name, 'Roll No':roll, 'CGPA':cgpa});
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Fill the details')
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              child: Column(
                children: [
                  Text(
                    name,
                    style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    controller: nameController
                  ),
                  Text(
                    rollno,
                    style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextField(
                      controller: rollnoController
                  ),
                  Text(
                    cgpa,
                    style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextField(
                      controller: cgpaController
                  ),
                  TextButton(onPressed: (){
                      addData(nameController.text,rollnoController.text,cgpaController.text);

                  }, child: Text('Submit'))
                ],
              )
            ),
          )
        ],
      )
    );
  }
}
