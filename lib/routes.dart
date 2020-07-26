

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:livevend/views/Register/RegisterWithDetails.dart';
import 'package:livevend/views/Register/registerCompany.dart';
import 'package:livevend/views/Register/registerEmail.dart';
import 'package:livevend/views/Register/registerPhoneNumber.dart';
import 'package:livevend/views/Register/registerSetPassword.dart';
import 'package:livevend/views/login/loginView.dart';
import 'package:livevend/startUpView.dart';
import 'package:livevend/views/login/loginWithGoogle.dart';
import 'package:livevend/views/login/passwordView.dart';
import 'package:livevend/views/welcome/welcome.dart';
import 'views/Register/registerWithGoogleView.dart';
const String LoginRoute = "/";
const String StartUpRoute = "Startup";
const String RegisterRoute = "Register";
const String WelcomeRoute = "Welcome";
const String PasswordRoute = "Password";
const String LoginWithGoogleRoute = "LoginWithGoogle";
const String RegsterWithDetailsRoute = "RegsterWithDetails";
const String RegisterEmailRoute = "RegisterEmail";
const String RegisterCompanyRoute = "RegisterCompany";
const String RegisterPhoneNumberRoute = "RegisterPhoneNumber";
const String RegisterPasswordRoute = "RegisterPasswordRoute";





Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {

    case StartUpRoute:
      return
        MaterialPageRoute(

            builder: (BuildContext context)=>StartUpView()

        );
    case LoginWithGoogleRoute:
      return
        MaterialPageRoute(
            settings: RouteSettings(
                name: settings.name
            ),
            builder: (BuildContext context)=>LoginWithGoogle()

        );

    case LoginRoute:
      return
        MaterialPageRoute(
            settings: RouteSettings(
                name: settings.name
            ),
            builder: (BuildContext context)=>Login()

        );
    case PasswordRoute:
      return
        MaterialPageRoute(

            builder: (BuildContext context)=>Password()

        );

    case RegisterRoute:
      return
        MaterialPageRoute(
            settings: RouteSettings(
                name: settings.name
            ),
            builder: (BuildContext context)=>Register()

        );
    case RegisterEmailRoute:
      return
        MaterialPageRoute(
            settings: RouteSettings(
                name: settings.name
            ),
            builder: (BuildContext context)=>RegisterEmail()

        );
    case RegsterWithDetailsRoute:
      return
        MaterialPageRoute(
            settings: RouteSettings(
                name: settings.name
            ),
            builder: (BuildContext context)=>RegisterWithDetails()

        );
    case RegisterCompanyRoute:
      return
        MaterialPageRoute(
            settings: RouteSettings(
                name: settings.name
            ),
            builder: (BuildContext context)=>RegisterCompany()

        );
    case RegisterPasswordRoute:
      return
        MaterialPageRoute(
            settings: RouteSettings(
                name: settings.name
            ),
            builder: (BuildContext context)=>RegisterPassword()

        );
    case RegisterPhoneNumberRoute:
      return
        MaterialPageRoute(
            settings: RouteSettings(
                name: settings.name
            ),
            builder: (BuildContext context)=>RegisterPhoneNumber()

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