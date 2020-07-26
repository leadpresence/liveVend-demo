import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:livevend/imports.dart';

import '../UIConstants.dart';
class WelcomeView extends StatefulWidget {
  @override
  _WelcomeViewState createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                Container(
                  height: UIConstant.heightMultiplier*70,
                  width:UIConstant.widthMultiplier* 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    image: DecorationImage(
                      
                      image: AssetImage("assets/images/Livend.jpg")
                    )
                  ),

                )

            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                Text("Welcome \n LiveVend",
                  style: GoogleFonts.nunitoSans(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                      fontSize: 4.6 * UIConstant.textMultiplier),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              RaisedButton(
                child: Text("Continue"),
                onPressed:(){
                  Navigator.pushNamed(context, RegisterRoute);
                } ,
              )
            ],)
          ],
        ),
      ),
    );
  }
}
