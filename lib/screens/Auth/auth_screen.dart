import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:privco/widgets/Auth/build_auth.dart';

import 'auth_in.dart';
import 'auth_up.dart';


const mockupHeight = 1480;
const mockupWidth = 375;

class AuthScreen extends StatefulWidget {

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  @override
  Widget build(BuildContext context) {

    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;

    void selectIn(){
      Navigator.of(context).pushNamed(AuthForm.routeName);
    }

    void selectUp(){
      Navigator.of(context).pushNamed(AuthUp.routeName);
    }



    return Scaffold(
                backgroundColor: Theme.of(context).primaryColor,
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(top: height/40,),
                      child: Image.asset('assets/images/logo.png',),
                    ),
                    SizedBox(height: height/35),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  //alignment: Alignment.center,
                                  margin: EdgeInsets.only(right: width/10),
                                  child: Image.asset('assets/images/img.png',),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: height/3),
                                  child: Row(
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(left: 100,),
                                          child: Text('Welcome to PrivCo',
                                            style: TextStyle(fontWeight: FontWeight.bold,
                                                fontSize: 20),)),
                                      SizedBox(width: 10,),
                                      Image.asset('assets/images/heart.png',)
                                    ],
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 290, left: 23),
                                    width: 350,
                                    child: Column(
                                      children: [
                                        Text('Your best guide to your health goals',
                                          style: TextStyle(fontSize: 16,
                                              fontWeight: FontWeight.normal,color: Color.fromRGBO(175, 129, 205, 40)),),
                                        Text('with workouts, gym locations,',
                                          style: TextStyle(fontSize: 16,
                                              fontWeight: FontWeight.normal,color: Color.fromRGBO(175, 129, 205, 40)),),
                                        Text('coaches coordination,', style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal, color: Color.fromRGBO(175, 129, 205, 40)),),
                                        Text(' tunisian meal plans and a calorie',
                                          style: TextStyle(fontSize: 16,
                                              fontWeight: FontWeight.normal, color: Color.fromRGBO(175, 129, 205, 40)),),
                                        Text('traker', style: TextStyle(fontSize: 16,
                                            fontWeight: FontWeight.normal, color: Color.fromRGBO(175, 129, 205, 40)),)
                                      ],
                                    )
                                )
                              ],
                            ),
                            SizedBox(height: height/22,),
                            BuildAuth(Colors.white, Color.fromRGBO(175, 129, 205, 40), selectIn, 'Log In'),
                            SizedBox(height: height/40,),
                            BuildAuth(Color.fromRGBO(175, 129, 205, 40), Colors.white, selectUp, 'Create Account'),
                            SizedBox(height: 35,),
                            Expanded(
                              child: Container(
                                child: Column(
                                  children: [
                                    Text('By continuing you accept our',style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal,letterSpacing: 1, color: Color.fromRGBO(90, 90, 42, 50)),),
                                    Text('Privacy Policy and Terms of Use', style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal,letterSpacing: 1, color: Color.fromRGBO(90, 90, 42, 50,),decoration: TextDecoration.underline,),)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )


    );
  }
}
