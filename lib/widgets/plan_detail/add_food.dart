import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:privco/screens/details/coach_detail.dart';
import 'package:privco/screens/searches/breakfast.dart';


class AddFood extends StatefulWidget {
static const routeName = 'add_food';
  @override
  _AddFoodState createState() => _AddFoodState();
}

class _AddFoodState extends State<AddFood> {
  double percent = 0.01;
  Timer timer;

  _startTimer(){
    timer = Timer.periodic(Duration(milliseconds: 1000), (_) {
        setState(() {
          percent+=10;
          if (percent >= 100){
            timer.cancel();
            percent = 0.0 ;
          }
        });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        body: Column(
              children: [
                Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only( top: 50),
                      child: Expanded(
                        child: CircularPercentIndicator(
                          circularStrokeCap: CircularStrokeCap.round,
                          percent: percent,
                          animation: true,
                          animateFromLastPercent: true,
                          radius: 250.0,
                          lineWidth: 20,
                          progressColor: Colors.green,
                          center: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('$percent',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                              Text('of 1754 kcal',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.grey))
                            ],
                          ),
                        )
                  ),
                    ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/cooking.png'),
                    SizedBox(width: 20,),
                    Image.asset('assets/images/assiette.png'),
                    SizedBox(width: 20,),
                    Image.asset('assets/images/salad.png',width: 40,)
                  ],
                ),
                SizedBox(height: 15,),
                Container(
                  alignment: Alignment.center,
                  child: Text('Log everything you eat\n                 today',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 15,),
                Container(
                  child: Text("Be honest and track everything. We'll\noptimize your program based on the\n                              data",style: TextStyle(fontSize: 16, color: Colors.grey),),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Color.fromRGBO(195, 163, 212, 100)
                      ),
                      child: FlatButton(
                        onPressed: (){
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  automaticallyImplyLeading:false,
                                  elevation: 0,
                                  actions: [
                                    IconButton(
                                        onPressed: (){
                                      Navigator.pop(context);
                                    },
                                        icon: Icon(Icons.close_fullscreen),
                                    )
                                  ],
                                ),
                                body: Column(
                                  children: [
                                    Container(
                                      width:300,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                      child: Row(
                                        children: [
                                          TextFormField(
                                            cursorColor: Color.fromRGBO(175, 129, 205, 40),
                                            autocorrect: false,
                                            enableSuggestions: false,
                                            textCapitalization: TextCapitalization.none,
                                            keyboardType: TextInputType.text,
                                            decoration: InputDecoration(
                                              labelText: "Add a Name of the dish",
                                              labelStyle: TextStyle(color: Colors.black,fontSize: 16,),
                                              filled: true,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],

                                ),
                              );
                            },
                          );
                        },
                         child: Row(
                           children: [
                             Icon(Icons.add,color: Color.fromRGBO(91, 6, 138, 100), size: 30,),
                             SizedBox(width: 10,),
                             Text('CALORIES',style: TextStyle(color: Color.fromRGBO(91, 6, 138, 100), fontSize: 18, fontWeight: FontWeight.bold),),
                           ],
                         ),

                      ),
                      ),
                    SizedBox(width: 20,),
                    Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          color: Color.fromRGBO(91, 6, 138, 100)
                      ),
                      child: FlatButton(
                        onPressed: (){
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Scaffold(
                                body: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only( top: 60),
                                        alignment: Alignment.center,
                                        child: Text('What did you have ?',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
                                    ),
                                    SizedBox(height: 20,),
                                   Column(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: [
                                           Container(
                                             height: 140,
                                             width: 160,
                                             decoration: BoxDecoration(
                                               color: Color.fromRGBO(207, 209, 209, 100),
                                               borderRadius: BorderRadius.all(Radius.circular(20))
                                             ),
                                             child: FlatButton(
                                                onPressed:(){
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Breakfast()));
                                                },
                                               child: Column(
                                                 mainAxisAlignment: MainAxisAlignment.center,
                                                 children: [
                                                   Image.asset('assets/images/cooking.png'),
                                                   SizedBox(height: 10,),
                                                   Text('BREAKFAST',style: TextStyle(color: Colors.black),)
                                                 ],
                                               ),
                                             ),
                                           ),
                                           SizedBox(width: 20,),
                                           Container(
                                             height: 140,
                                             width: 160,
                                             decoration: BoxDecoration(
                                                 color: Color.fromRGBO(207, 209, 209, 100),
                                                 borderRadius: BorderRadius.all(Radius.circular(20))
                                             ),
                                             child: FlatButton(
                                               onPressed:(){},
                                               child: Column(
                                                 mainAxisAlignment: MainAxisAlignment.center,
                                                 children: [
                                                   Image.asset('assets/images/assiette.png'),
                                                   SizedBox(height: 10,),
                                                   Text('LUNCH',style: TextStyle(color: Colors.black),)
                                                 ],
                                               ),
                                             ),
                                           )
                                         ],
                                       ),
                                       SizedBox(height: 20,),
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: [
                                           Container(
                                             height: 140,
                                             width: 160,
                                             decoration: BoxDecoration(
                                                 color: Color.fromRGBO(207, 209, 209, 100),
                                                 borderRadius: BorderRadius.all(Radius.circular(20))
                                             ),
                                             child: FlatButton(
                                               onPressed:(){},
                                               child: Column(
                                                 mainAxisAlignment: MainAxisAlignment.center,
                                                 children: [
                                                   Image.asset('assets/images/salad.png',width: 50,),
                                                   SizedBox(height: 10,),
                                                   Text('DINNER',style: TextStyle(color: Colors.black),)
                                                 ],
                                               ),
                                             ),
                                           ),
                                           SizedBox(width: 20,),
                                           Container(
                                             height: 140,
                                             width: 160,
                                             decoration: BoxDecoration(
                                                 color: Color.fromRGBO(207, 209, 209, 100),
                                                 borderRadius: BorderRadius.all(Radius.circular(20))
                                             ),
                                             child: FlatButton(
                                               onPressed:(){},
                                               child: Column(
                                                 mainAxisAlignment: MainAxisAlignment.center,
                                                 children: [
                                                   Image.asset('assets/images/kakawiya.png'),
                                                   SizedBox(height: 10,),
                                                   Text('SNACKS',style: TextStyle(color: Colors.black),)
                                                 ],
                                               ),
                                             ),
                                           )
                                         ],
                                       )

                                     ],
                                   )
                                  ],
                                ),

                              );
                            },
                          );
                        },
                        child: Row(
                          children: [
                            Icon(Icons.add,color: Colors.white, size: 30,),
                            SizedBox(width: 10,),
                            Text('Food',style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    )
                  ],
                )

              ],
          ),
        );


  }
}
