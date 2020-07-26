

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:livevend/views/login/loginView.dart';
import 'package:livevend/startUpView.dart';
import 'package:livevend/views/welcome/welcome.dart';
import 'views/Register/registerView.dart';
const String LoginRoute = "/";
const String StartUpRoute = "Startup";
const String RegisterRoute = "Register";
const String WelcomeRoute = "Welcome";




Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {

    case StartUpRoute:
      return
        MaterialPageRoute(
            settings: RouteSettings(
                name: settings.name
            ),
            builder: (BuildContext context)=>StartUpView()

        );

    case LoginRoute:
      return
        MaterialPageRoute(
            settings: RouteSettings(
                name: settings.name
            ),
            builder: (BuildContext context)=>Login()

        );

    case RegisterRoute:
      return
        MaterialPageRoute(
            settings: RouteSettings(
                name: settings.name
            ),
            builder: (BuildContext context)=>Register()

        );

    case WelcomeRoute:
      return
        MaterialPageRoute(
            settings: RouteSettings(
                name: settings.name
            ),
            builder: (BuildContext context)=>WelcomeView()

        );
  }
  }