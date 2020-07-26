import 'package:flutter/material.dart';
import 'package:livevend/imports.dart';
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Row(
              children: <Widget>[
                Text("Welcome \n LiveVend",style: TextStyle(
          color: Colors.white,fontSize: 40
        ),),
              ],
            ),
            SizedBox(height: 20,),
            Row(children: <Widget>[
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
