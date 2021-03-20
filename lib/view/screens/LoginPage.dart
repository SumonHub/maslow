import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:maslow/view/utils/Constant.dart';
import 'package:maslow/view/utils/Routes.dart';
import 'package:maslow/view/utils/animation/FadeAnimation.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff21254a),
      body: Stack(
        children: [
          Container(
            color: Constants.blueLight,
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Image.asset("assets/images/blob_2.png",
                      width: 352, height: 343, color: Constants.blueDark),
                  top: -100,
                  right: -130,
                ),
                Positioned(
                  child: Image.asset("assets/images/blob_1.png",
                      width: 302, height: 343, color: Constants.blueMain),
                  top: 20,
                  left: -100,
                ),
              ],
            ),
          ),
          ListView(
            children: <Widget>[
              FadeAnimation(
                  1,
                  Center(
                    child: Image.asset(
                      'assets/images/maslow_logo.png',
                      height: 150,
                      width: 230,
                      fit: BoxFit.contain,
                      color: Colors.white,
                    ),
                  )
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    FadeAnimation(
                      1,
                      Text(
                        "Hello there, \nwelcome back",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    FadeAnimation(
                      1,
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.transparent,
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey[100],
                                  ),
                                ),
                              ),
                              child: TextField(
                                onChanged: (value){

                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Username",
                                  hintStyle: TextStyle(color: Colors.white60),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey[100],
                                  ),
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle:
                                        TextStyle(color: Colors.white60)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: FadeAnimation(
                        1,
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Colors.yellowAccent,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    FadeAnimation(
                      1,
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 50,
                          width: 200,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, Routes.ROUTE_HOME_PAGE);
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  )),
                                  backgroundColor: MaterialStateProperty.all(
                                      Constants.colorPrimary)),
                              child: Text('Log in')),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    FadeAnimation(
                      1,
                      Center(
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                            color: Colors.yellowAccent,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
