import 'package:flutter/material.dart';
import 'dart:async';

import 'package:privco/screens/Pages/food.dart';
import 'package:privco/screens/home.dart';


class Fasting extends StatefulWidget {
  static const routeName = 'fasting';
  @override
  _FastingState createState() => _FastingState();
}

class _FastingState extends State<Fasting> {
  static const duration = const Duration(seconds: 1);

  int secondsPassed = 0;
  bool isActive = false;

  Timer timer;

  void handleTick() {
    if (isActive) {
      setState(() {
        secondsPassed = secondsPassed + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (timer == null) {
      timer = Timer.periodic(duration, (Timer t) {
        handleTick();
      });
    }
    int seconds = secondsPassed % 60;
    int minutes = secondsPassed ~/ 60;
    int hours = secondsPassed ~/ (60 * 60);

    return  Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title:  Text('Fasting',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              height: 1990,
              color:Color.fromRGBO(237, 242, 243, 2),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 330,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30))
                    ),
                    //alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          child: Text('Upcoming Fast: 16 hours', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            LabelText(
                                label: 'HRS', value: hours.toString().padLeft(2, '0')),
                            LabelText(
                                label: 'MIN',
                                value: minutes.toString().padLeft(2, '0')),
                            LabelText(
                                label: 'SEC',
                                value: seconds.toString().padLeft(2, '0')),
                          ],
                        ),
                        Divider(),
                        Container(
                          width: 150,
                          height: 47,
                          margin: EdgeInsets.only(top: 30),
                          child: RaisedButton(
                            color: Color.fromRGBO(91, 6, 138, 100),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            child: Text(isActive ? 'End FAST' : 'START FAST',style: TextStyle(color: Colors.white),),
                            onPressed: () {
                              setState(() {
                                isActive = !isActive;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(padding:EdgeInsets.only(left: 35),alignment: Alignment.topLeft,child: Text('YOU NEED TO KNOW',style: TextStyle(fontWeight: FontWeight.bold),)),
                  SizedBox(height: 10,),
                  Container(
                    height: 480,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(padding: EdgeInsets.only(left: 30,top: 40),child: Text("W care about you. This type of diet is not recommended for you if you're:",style: TextStyle(color: Color.fromRGBO(87, 81, 81, 100), fontSize: 15, fontWeight:FontWeight.normal ),)),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              //padding: EdgeInsets.only(left: 30,right: 30),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(237, 242, 243, 2),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image.asset('assets/images/kid1.png',scale:1.9),
                            ),
                            SizedBox(width: 15,),
                            Container(child: Text('Pregnant / breastfeeding',style: TextStyle(color: Color.fromRGBO(87, 81, 81, 100), fontSize: 15, fontWeight:FontWeight.normal ),),)
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(237, 242, 243, 2),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image.asset('assets/images/pellule.png',scale:1.9,),
                            ),
                            SizedBox(width: 15,),
                            Container(child: Text('Have a history of eating\ndisorders',style: TextStyle(color: Color.fromRGBO(87, 81, 81, 100), fontSize: 15, fontWeight:FontWeight.normal ),),)
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(237, 242, 243, 2),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image.asset('assets/images/sang.png',scale:1.9,),
                            ),
                            SizedBox(width: 15,),
                            Container(child: Text('Have type 1 diabetes',style: TextStyle(color: Color.fromRGBO(87, 81, 81, 100), fontSize: 15, fontWeight:FontWeight.normal ),),)
                          ],
                        ),
                        Container(padding: EdgeInsets.only(left: 30,top: 40),child: Text("If any of this apply you, please follow our meal plan instead",style: TextStyle(color: Color.fromRGBO(87, 81, 81, 100), fontSize: 15, fontWeight:FontWeight.normal ),)),
                        SizedBox(height: 40,),
                        Container(
                          width: 260,
                          height: 50,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(237, 242, 243, 100).withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromRGBO(237, 242, 243, 2),
                          ),
                          child: FlatButton(
                            child: Text('GO TO MEAL PLAN',style: TextStyle(color:Color.fromRGBO(91, 6, 138, 100), fontSize: 20),),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Food()));
                            },
                          ),
                        )
                      ],

                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(padding:EdgeInsets.only(left: 35),alignment: Alignment.topLeft,child: Text('HOW TO GET READY',style: TextStyle(fontWeight: FontWeight.bold),)),
                  SizedBox(height: 10,),
                  Container(
                    height: 330,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              //padding: EdgeInsets.only(left: 30,right: 30),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(237, 242, 243, 2),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image.asset('assets/images/réveil.png',scale:0.6),
                            ),
                            SizedBox(width: 15,),
                            Container(child: Text('Pick fasting window to fit your\nlifestyle',style: TextStyle(color: Color.fromRGBO(87, 81, 81, 100), fontSize: 15, fontWeight:FontWeight.normal ),),)
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(237, 242, 243, 2),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image.asset('assets/images/salad.png',scale:1.9,),
                            ),
                            SizedBox(width: 15,),
                            Container(child: Text('Eat a high-protein meal before\nstarting',style: TextStyle(color: Color.fromRGBO(87, 81, 81, 100), fontSize: 15, fontWeight:FontWeight.normal ),),)
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(237, 242, 243, 2),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image.asset('assets/images/drinkwater.png',scale:1.9,),
                            ),
                            SizedBox(width: 15,),
                            Container(child: Text('Drink water to avoid\ndehydration',style: TextStyle(color: Color.fromRGBO(87, 81, 81, 100), fontSize: 15, fontWeight:FontWeight.normal ),),)
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(237, 242, 243, 2),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image.asset('assets/images/workout (2).png',scale:1.9,),
                            ),
                            SizedBox(width: 15,),
                            Container(child: Text('Continue your usual activities\nduring fasting',style: TextStyle(color: Color.fromRGBO(87, 81, 81, 100), fontSize: 15, fontWeight:FontWeight.normal ),),)
                          ],
                        ),

                      ],

                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(padding:EdgeInsets.only(left: 35),alignment: Alignment.topLeft,child: Text('0 - 8 HOURS',style: TextStyle(fontWeight: FontWeight.bold),)),
                  SizedBox(height: 10,),
                  Container(
                    height: 260,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              //padding: EdgeInsets.only(left: 30,right: 30),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(237, 242, 243, 2),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image.asset('assets/images/candy.png',scale:1.4),
                            ),
                            SizedBox(width: 15,),
                            Container(child: Text('Your blood sugar level drops',style: TextStyle(color: Color.fromRGBO(87, 81, 81, 100), fontSize: 15, fontWeight:FontWeight.normal ),),)
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(237, 242, 243, 2),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image.asset('assets/images/drinkwater.png',scale:1.9,),
                            ),
                            SizedBox(width: 15,),
                            Container(child: Text("Don't forgot to drink water",style: TextStyle(color: Color.fromRGBO(87, 81, 81, 100), fontSize: 15, fontWeight:FontWeight.normal ),),)
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(237, 242, 243, 2),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image.asset('assets/images/dna.png',scale:1.9,),
                            ),
                            SizedBox(width: 15,),
                            Container(child: Text("You're entering KETOSIS: your\nnerve xells activate to supply\nbrain with energy, your\nmetabolism accelerates",style: TextStyle(color: Color.fromRGBO(87, 81, 81, 100), fontSize: 15, fontWeight:FontWeight.normal ),),)
                          ],
                        ),

                      ],

                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(padding:EdgeInsets.only(left: 35),alignment: Alignment.topLeft,child: Text('8 - 16 HOURS',style: TextStyle(fontWeight: FontWeight.bold),)),
                  SizedBox(height: 10,),
                  Container(
                    height: 260,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              //padding: EdgeInsets.only(left: 30,right: 30),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(237, 242, 243, 2),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image.asset('assets/images/good.png',scale:1.4),
                            ),
                            SizedBox(width: 15,),
                            Container(child: Text('Your blood sugar levels are\nstable',style: TextStyle(color: Color.fromRGBO(87, 81, 81, 100), fontSize: 15, fontWeight:FontWeight.normal ),),)
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(237, 242, 243, 2),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image.asset('assets/images/fire.png',scale:1.9,),
                            ),
                            SizedBox(width: 15,),
                            Container(child: Text("Your body begins to burn fat",style: TextStyle(color: Color.fromRGBO(87, 81, 81, 100), fontSize: 15, fontWeight:FontWeight.normal ),),)
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(237, 242, 243, 2),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image.asset('assets/images/recycler.png',scale:1.3,),
                            ),
                            SizedBox(width: 15,),
                            Container(child: Text("You're entering AUTOPHAGY:\nyour body clears out damaged\ncells and creates new ones",style: TextStyle(color: Color.fromRGBO(87, 81, 81, 100), fontSize: 15, fontWeight:FontWeight.normal ),),)
                          ],
                        ),

                      ],

                    ),
                  )
                ],
              ),
            ),
          ),

    );
  }
}

class LabelText extends StatelessWidget {
  LabelText({this.label, this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.grey,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            '$value',
            style: TextStyle(
                color: Colors.white, fontSize: 55, fontWeight: FontWeight.bold),
          ),
          Text(
            '$label',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
