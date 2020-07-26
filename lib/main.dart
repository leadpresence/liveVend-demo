import 'package:flutter/material.dart';
import 'package:livevend/routes.dart';
import 'package:livevend/startUpView.dart';
import 'package:livevend/views/Register/RegisterWithDetails.dart';
import 'package:livevend/views/Register/registerEmail.dart';
import 'package:livevend/views/Register/registerSetPassword.dart';
import 'package:livevend/views/Register/registerWithGoogleView.dart';
import 'package:livevend/views/UIConstants.dart';
import 'package:livevend/views/login/loginView.dart';
import 'package:livevend/views/login/loginWithGoogle.dart';
import 'package:livevend/views/login/passwordView.dart';
import 'package:livevend/views/welcome/welcome.dart';

void main() {
  runApp(LiveVend());
}

class LiveVend extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation)
      {
        UIConstant().init(constraints, orientation);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primaryColor: Color(0xff110027),
            accentColor: Color(0xff949ca8),
            primaryTextTheme: TextTheme(

            ),
            scaffoldBackgroundColor:Color(0xff110027),
            textTheme: TextTheme(
                headline1:TextStyle(color: Colors.white
                ),
                subtitle1:TextStyle(color: Colors.white)
            ),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          onGenerateRoute: onGenerateRoute,
          home: WelcomeView(),
        );
      });
  });
  }
}

