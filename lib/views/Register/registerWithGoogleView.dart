import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:livevend/widgets/doNotHaveAccountRegister.dart';
import 'package:livevend/widgets/haveAccountLogin.dart';

import '../../routes.dart';
import '../UIConstants.dart';
class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return       Scaffold(
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
                    height: UIConstant.heightMultiplier * 32,
                    width: UIConstant.heightMultiplier * 22,
                    //INNER CONTAINER HOLDING LOGO

                    child: Container(
                      height: UIConstant.heightMultiplier * 10,
                      width: UIConstant.heightMultiplier * 20,
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
                    height: UIConstant.heightMultiplier * 32,
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
                    "Register",
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
                    "Enter Full Name",
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
            ),
            //LOGIN BUTTON
            Padding(
              padding: const EdgeInsets.only(
                  left:8.0,right:8.0
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize:  MainAxisSize.min,
                children: <Widget>[
                  Spacer(),
                  GestureDetector(
                    onTap: (){Navigator.pushNamed(context, RegisterEmailRoute);},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(9),

                        ),
                        border: Border.all(
                          color: Colors.blueGrey[500],
                        ),
                      ),
                      height: 45,
                      width: 50,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.arrow_forward, color: Colors.blueGrey[500],size: 25,
                          )

                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),



            Padding(
              padding: const EdgeInsets.only(
                  top: 10,
                  left:8.0,right:8.0
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize:  MainAxisSize.min,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Or Register To start using",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, PasswordRoute);

                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(9),
                        ),
                      ),
                      height: 45,
                      width: 230,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/G+.jpeg")
                                )

                            ),
                          ),
                          SizedBox(width: 10,),
                          Text(
    "Create Account with Google",
                            style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: UIConstant.heightMultiplier*7,),
            Padding(
              padding: const EdgeInsets.only(
                  top: 1,
                  left:8.0,right:8.0
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize:  MainAxisSize.min,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      haveAccount(context)
                    ],
                  ),

                ],
              ),
            ),


          ],
        ),
      ),
    );

  }
}
