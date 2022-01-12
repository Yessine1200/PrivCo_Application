
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:privco/screens/Forms/form_day.dart';
import 'package:privco/screens/Forms/form_water.dart';
import 'package:privco/screens/Forms/form_weight.dart';

import 'form_phsic.dart';


class FormBody extends StatefulWidget {
  static const routeName = 'form_body';
  Color _color1 = Colors.grey;
  Color _color2 = Color.fromRGBO(175, 129, 205, 30);
  String selectedBedrooms = '' ;

  @override
  _FormBodyState createState() => _FormBodyState();
}

class _FormBodyState extends State<FormBody> {

  Color color_1 = Colors.grey;
  Color color_2 = Colors.grey;
  Color color_3 = Colors.grey;
  Color color_4 = Colors.grey;
  Color color_5 = Colors.grey;


  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;

    final user =  FirebaseAuth.instance.currentUser;
    final id = user.uid;


    void changeBedrooms(String frequency, String body) async{

      setState(() {
        widget.selectedBedrooms = frequency;
        print(widget.selectedBedrooms);

      });
      await FirebaseFirestore.instance.collection('users').doc(id).update({
        'Body Type':body,
      });

    }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body:  Column(
          children: [
            SizedBox(height: height/40,),
          Container(
            //alignment: Alignment.center,
              padding: EdgeInsets.only(left: width*0.1,right: width*0.1),
              child: Column(
                children: [
                  Text("Body Type",style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
                ],
              )
          ),
          SizedBox(height: height/5,),
            Stack(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          changeBedrooms('1','Hourglass');
                        },
                        child: Container(
                          padding: EdgeInsets.only(right: 20),
                          decoration: (widget.selectedBedrooms == "1")
                              ? BoxDecoration(
                              border: Border.all(color:widget._color2,width: 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(20)))
                              : BoxDecoration(
                              border: Border.all(color:widget._color1,width: 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(20))),
                          width: 50,
                          height: 176,
                        ),
                      ),
                      SizedBox(width: 15,),
                      InkWell(
                        onTap: (){
                          changeBedrooms('2','Inverted Triangle');
                        },
                        child: Container(
                          padding: EdgeInsets.only(right: 20),
                          decoration: (widget.selectedBedrooms == "2")
                              ? BoxDecoration(
                              border: Border.all(color:widget._color2,width: 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(20)))
                              : BoxDecoration(
                              border: Border.all(color:widget._color1,width: 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(20))),
                          width: 50,
                          height: 176,
                        ),
                      ),
                      SizedBox(width: 15,),
                      InkWell(
                        onTap: (){
                          changeBedrooms('3','Rectangle');
                        },
                        child: Container(
                          padding: EdgeInsets.only(right: 20),
                          decoration: (widget.selectedBedrooms == "3")
                              ? BoxDecoration(
                              border: Border.all(color:widget._color2,width: 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(20)))
                              : BoxDecoration(
                              border: Border.all(color:widget._color1,width: 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(20))),
                          width: 50,
                          height: 176,
                        ),
                      ),
                      SizedBox(width: 15,),

                      InkWell(
                        onTap: (){
                          changeBedrooms('4','Pear');
                        },
                        child: Container(
                          padding: EdgeInsets.only(right: 20),
                          decoration: (widget.selectedBedrooms == "4")
                              ? BoxDecoration(
                              border: Border.all(color:widget._color2,width: 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(20)))
                              : BoxDecoration(
                              border: Border.all(color:widget._color1,width: 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(20))),
                          width: 50,
                          height: 176,
                        ),
                      ),
                      SizedBox(width: 15,),
                      InkWell(
                        onTap: (){
                          changeBedrooms('5','Apple');
                        },
                        child: Container(
                          padding: EdgeInsets.only(right: 20),
                          decoration: (widget.selectedBedrooms == "5")
                              ? BoxDecoration(
                              border: Border.all(color:widget._color2,width: 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(20)))
                              : BoxDecoration(
                              border: Border.all(color:widget._color1,width: 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(20))),
                          width: 50,
                          height: 176,
                        ),
                      ),                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: width/18),
                  padding: EdgeInsets.only(top: height/20, left: width/20),
                  width: 330,
                  child: Image.asset('assets/images/body.png'),
                ),

                Container(
                    padding: EdgeInsets.only(left:45,top: 180),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //SizedBox(width: 5,),
                      Text('Hourglass',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                      SizedBox(width: 15,),
                      Text('Inverted\nTriangle',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                      SizedBox(width: 20,),
                      Text('Rectangle',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                      SizedBox(width: 20,),
                      Text('Pear',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                      SizedBox(width: 30,),
                      Text('Apple',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),

                    ],
                  ),
                )





              ]
            ),
            SizedBox(height: height/8,),
            Padding(
              padding:  EdgeInsets.only(right: width/80),
              child: Container(
                width: 320,
                height: 30,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(175, 129, 205, 40),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FormPhsyic()),);
                  },
                  child: Text('Next',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                ),
              ),
            ),


          ]
    ),
    );
  }
}
