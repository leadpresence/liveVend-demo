import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:livevend/imports.dart';
import 'package:livevend/views/UIConstants.dart';
import 'package:livevend/widgets/doNotHaveAccountRegister.dart';

class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool _passwordVisible=false;
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
                    "Enter your password",
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
                      obscureText: !_passwordVisible,
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
                        hintText: "Type In your password",
                        hintStyle:
                        TextStyle(fontSize: 10.0, color: Colors.grey),
                        suffixIcon: IconButton(
                          icon: Icon(
                            // Based on passwordVisible state choose the icon
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Theme.of(context).primaryColorDark,
                          ),
                          onPressed: () {
                            // Update the state i.e. toogle the state of passwordVisible variable
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
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
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, LoginRoute);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(9),
                        ),
                      ),
                      height: 45,
                      width: 130,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Login Account",
                            style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
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
                        Icon(Icons.arrow_back, color: Colors.blueGrey[500],size: 25,
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: UIConstant.heightMultiplier*8,),


            //forgot password
            Padding(
              padding: const EdgeInsets.only(
                  top: 15,
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
                        "Forgot your password?",
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
            SizedBox(height: UIConstant.heightMultiplier*10,),
            //do not have Account
            Padding(
              padding: const EdgeInsets.only(
                  top: 15,
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
                      doNotHaveAccount(context)
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
