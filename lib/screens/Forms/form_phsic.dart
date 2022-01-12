import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:privco/screens/Forms/form_weight.dart';

class FormPhsyic extends StatefulWidget {
  static const routeName = 'form_physic';
  Color _color1 = Colors.grey;
  Color _color2 = Color.fromRGBO(218, 17, 225, 100);
  String selectedBedrooms = '' ;


  @override
  _FormPhsyicState createState() => _FormPhsyicState();
}

class _FormPhsyicState extends State<FormPhsyic> {

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    final user =  FirebaseAuth.instance.currentUser;
    final id = user.uid;


    void changeBedrooms(String frequency, String active) async {
      setState(() {
        widget.selectedBedrooms = frequency;
        print(widget.selectedBedrooms);
      });
      await FirebaseFirestore.instance.collection('users').doc(id).update({
        'Physically active': active,
      });
    }
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      body:  Container(
        //alignment: Alignment.topLeft,
        padding: EdgeInsets.only(left: width*0.1,right: width*0.1),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: height/40,),
            Container(
              //padding: EdgeInsets.only(left: width/10),
              child:
              Text('How physically active\n             are you? ',style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: height/18,),
            InkWell(
              onTap: () {
                changeBedrooms("1",'Not much');
              },
              child: Container(
                height: 60,
                width: 320,
                decoration: (widget.selectedBedrooms == "1")
                    ? BoxDecoration(
                    border: Border.all(color:widget._color2,width: 1),
                    borderRadius:
                    BorderRadius.all(Radius.circular(20)))
                    : BoxDecoration(
                    border: Border.all(color:widget._color1,width: 1),
                    borderRadius:
                    BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Text(
                    "Not much",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,fontSize: 17,letterSpacing: 1,
                        color: (widget.selectedBedrooms == "1")
                            ? widget._color2
                            : Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(height: height/35,),
            InkWell(
              onTap: () async{
                changeBedrooms("2",'1-2 workouts a week');
              },
              child: Container(
                height: 60,
                width: 320,
                decoration: (widget.selectedBedrooms == "2")
                    ? BoxDecoration(
                    border: Border.all(color:widget._color2,width: 1),
                    borderRadius:
                    BorderRadius.all(Radius.circular(20)))
                    : BoxDecoration(
                    border: Border.all(color:widget._color1,width: 1),
                    borderRadius:
                    BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Text(
                    "1-2 workouts a week",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,fontSize: 17,letterSpacing: 1,
                        color: (widget.selectedBedrooms == "2")
                            ? widget._color2
                            : Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(height: height/35,),
            InkWell(
              onTap: () async{
                changeBedrooms("3",'3-5 workouts a week');
              },
              child: Container(
                height: 60,
                width: 320,
                decoration: (widget.selectedBedrooms == "3")
                    ? BoxDecoration(
                    border: Border.all(color:widget._color2,width: 1),
                    borderRadius:
                    BorderRadius.all(Radius.circular(20)))
                    : BoxDecoration(
                    border: Border.all(color:widget._color1,width: 1),
                    borderRadius:
                    BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Text(
                    "3-5 workouts a week",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,fontSize: 17,letterSpacing: 1,
                        color: (widget.selectedBedrooms == "3")
                            ? widget._color2
                            : Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(height: height/35,),
            InkWell(
              onTap: () async{
                changeBedrooms("4",'5-7 workouts a week');
              },
              child: Container(
                height: 60,
                width: 320,
                decoration: (widget.selectedBedrooms == "4")
                    ? BoxDecoration(
                    border: Border.all(color:widget._color2,width: 1),
                    borderRadius:
                    BorderRadius.all(Radius.circular(20)))
                    : BoxDecoration(
                    border: Border.all(color:widget._color1,width: 1),
                    borderRadius:
                    BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Text(
                    "5-7 workouts a week",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,fontSize: 17,letterSpacing: 1,
                        color: (widget.selectedBedrooms == "4")
                            ? widget._color2
                            : Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(height: height*0.1,),
            Container(
              width: 320,
              height: height*0.04,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(175, 129, 205, 40),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: FlatButton(
                onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormWeight()),);},
                child: Text('Next',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
