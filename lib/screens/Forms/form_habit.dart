import 'package:flutter/material.dart';
import 'package:privco/screens/Forms/form_water.dart';

class FormHabit extends StatefulWidget {

  static const routeName = 'form_habit';

  @override
  _FormHabitState createState() => _FormHabitState();
}

class _FormHabitState extends State<FormHabit> {
  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,

      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(right: width/80),
        child: Column(
            children: [
              SizedBox(height: height/40,),
              Container(
                  alignment: Alignment.center,
                  // padding: EdgeInsets.only(left: 20),
                  child: Text("Bad Habits",style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 50,),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: width/50,),
                      Container(
                        width: 163,
                        height: 137,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey,width: 1),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                        ),
                        child: Stack(
                          children: [
                            Container(
                                padding:EdgeInsets.only(left: 80,top: 50),
                                child: Image.asset('assets/images/pizza.png',width: 70,)),
                            Container(
                              padding: EdgeInsets.only(top: 15,right: 4),
                              child: FlatButton(
                                onPressed: (){},
                                child:
                                Text("I enjoy midnight\nsnacks\nفقوم نبعث\nعقاب اللّيل ",maxLines: 4,style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.normal),),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        width: 163,
                        height: 137,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey,width: 1),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                        ),
                        child: Stack(
                          children: [
                            Container(
                                padding:EdgeInsets.only(left: 80,top: 30),
                                child: Image.asset('assets/images/mel7.png',width: 70,)),
                            Container(
                              padding: EdgeInsets.only(top: 15,right: 4),
                              child: FlatButton(
                                onPressed: (){},
                                child:
                                Text("I love salty\nfood\nنموت\nعالمالح ",maxLines: 4,style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.normal),),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: width/50,),
                      Container(
                        width: 163,
                        height: 137,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey,width: 1),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                        ),
                        child: Stack(
                          children: [
                            Container(
                                padding:EdgeInsets.only(left: 80,top: 40),
                                child: Image.asset('assets/images/sleep.png',width: 70,)),
                            Container(
                              padding: EdgeInsets.only(top: 15,right: 4),
                              child: FlatButton(
                                onPressed: (){},
                                child:
                                Text("I Don't rest\nenough\nمانرقدش\nبالباهي",maxLines: 4,style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.normal),),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        width: 163,
                        height: 137,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey,width: 1),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                        ),
                        child: Stack(
                          children: [
                            Container(
                                padding:EdgeInsets.only(left: 110,top: 30),
                                child: Image.asset('assets/images/soda.png',width: 50,)),
                            Container(
                              padding: EdgeInsets.only(top: 15,right: 4),
                              child: FlatButton(
                                onPressed: (){},
                                child:
                                Text("I have\nso much\nsoda\nنبڨبڨ بارشا ڨازوز ",maxLines: 4,style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.normal),),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: width/50,),
                      Container(
                        width: 163,
                        height: 137,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey,width: 1),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                        ),
                        child: Stack(
                          children: [
                            Container(
                                padding:EdgeInsets.only(left: 81,top: 53),
                                child: Image.asset('assets/images/chocolate.png',width: 78,height: 78,)),
                            Container(
                              padding: EdgeInsets.only(top: 15,right: 4),
                              child: FlatButton(
                                onPressed: (){},
                                child:
                                Text("I have a\nsweet tooth\nنحبّ الحلو ",maxLines: 4,style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.normal),),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        width: 163,
                        height: 137,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey,width: 1),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                        ),
                        child: Stack(
                          children: [
                            Container(
                                padding:EdgeInsets.only(left: 85,top: 20),
                                child: Image.asset('assets/images/no icon.png',width: 80,height: 78,)),
                            Container(
                              padding: EdgeInsets.only(top: 15,right: 4),
                              child: FlatButton(
                                onPressed: (){},
                                child:
                                Text("None of\nthe above\nو لا وحدا فيهم  ",maxLines: 4,style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.normal),),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: height/30,),
              Padding(
                padding:  EdgeInsets.only(left: width/45),
                child: Container(
                  width: 355,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(175, 129, 205, 40),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: FlatButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FormWater()),);
                    },
                    child: Text('Next',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                  ),
                ),
              ),

            ]
        ),
      ),
    );
  }
}
