
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:livevend/imports.dart';


Widget doNotHaveAccount(BuildContext context){
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(

        style:TextStyle(fontSize:10.5, color: Colors.blueGrey),
        children: <TextSpan>[
          TextSpan( text:"I don\'t  have and account?",
              recognizer:new TapGestureRecognizer()..onTap = () => print('RegisterPage'),
              style:TextStyle(fontWeight: FontWeight.bold)
          ),
          TextSpan(text: "   Register", style:TextStyle(fontWeight: FontWeight.bold,color:Colors.white),
            recognizer:new TapGestureRecognizer()..onTap = () {
            Navigator.pushNamed(context, RegisterRoute);
            print('Policy');},

          )
        ]),
  );
}