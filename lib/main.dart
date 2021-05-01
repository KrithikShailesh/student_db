import 'package:flutter/material.dart';
import 'dart:async';
import 'package:splashscreen/splashscreen.dart';
import 'package:student_database/Details.dart';
void main() =>
  runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SplashScreen(
      seconds: 4,
      navigateAfterSeconds: new Screen(),
      title: Text('REGISTRATION',textScaleFactor: 2),
      loadingText: Text('loading...'),
      loaderColor: Colors.blue,
    );
  }
}
