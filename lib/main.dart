import 'package:flutter/material.dart';
import 'package:livevend/startUpView.dart';

void main() {
  runApp(LiveVend());
}

class LiveVend extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StartUpView(title: 'LiveVend'),
    );
  }
}

