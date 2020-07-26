import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:livevend/views/UIConstants.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 10.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: UIConstant.heightMultiplier * 45,
                    width: UIConstant.heightMultiplier * 22,
                    //INNER CONTAINER HOLDING LOGO

                    child: Container(
                      height: UIConstant.heightMultiplier * 12,
                      width: UIConstant.heightMultiplier * 22,
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        image: DecorationImage(
                            image: AssetImage('assets/images/logo 4.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: UIConstant.widthMultiplier,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, right: 2.0),
                  child: Container(
                    height: UIConstant.heightMultiplier * 45,
                    width: UIConstant.heightMultiplier * 28.5,
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      image: DecorationImage(
                          image: AssetImage('assets/images/Group 4.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: UIConstant.widthMultiplier,
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0,right:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Login",
                    style: GoogleFonts.nunitoSans(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                        fontSize: 4.6 * UIConstant.textMultiplier),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: UIConstant.widthMultiplier,
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0,right:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Enter your Email address",
                    style: GoogleFonts.nunitoSans(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                        fontSize: 1.6 * UIConstant.textMultiplier),
                  ),
                ],
              ),
            ),
            SizedBox(height: UIConstant.widthMultiplier),
            Padding(
              padding: const EdgeInsets.only(
                  left:8.0,right:8.0
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: UIConstant.widthMultiplier * 90,
                    height: UIConstant.widthMultiplier * 30,
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70)
                      ),
    focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.cyan),
    ),
                        hintText: "Type In your email",
                        hintStyle:
                        TextStyle(fontSize: 10.0, color: Colors.grey),
    ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
