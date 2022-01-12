import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:privco/screens/Forms/form_gender.dart';


class FormGoals extends StatefulWidget {
  static const routeName = 'form_goals';
  Color _color1 = Colors.grey;
  Color _color2 = Color.fromRGBO(175, 129, 205, 30);
  String selectedBedrooms = '' ;


  @override
  _FormGoalsState createState() => _FormGoalsState();
}

class _FormGoalsState extends State<FormGoals> {


  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;

    final user =  FirebaseAuth.instance.currentUser;
    final id = user.uid;


    void changeBedrooms(String frequency, String goal) async{

      setState(() {
        widget.selectedBedrooms = frequency;
        print(widget.selectedBedrooms);

      });
      await FirebaseFirestore.instance.collection('users').doc(id).update({
        'goal':goal,
      });

    }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        //alignment: Alignment.topLeft,
        padding: EdgeInsets.only(left: width*0.1,right: width*0.1),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: height/40,),
            Container(
              //padding: EdgeInsets.only(left: width/10),
              child:
              Text("What's your main\n         goals? ",style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: height/18,),
            InkWell(
              onTap: () {
                changeBedrooms("1",'Lose weight');
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
                    "Lose Weight",
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
                changeBedrooms("2",'Gain Weight');
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
                    "Gain Weight",
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
                changeBedrooms("3",'Keep Fit');
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
                    "Keep Fit",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,fontSize: 17,letterSpacing: 1,
                        color: (widget.selectedBedrooms == "3")
                            ? widget._color2
                            : Colors.black),
                  ),
                ),
              ),
            ),

            SizedBox(height: height*0.2,),
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
              MaterialPageRoute(builder: (context) => FormGender()),);},
                child: Text('Next',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
              ),
            ),


          ],
        ),
      ),/*Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.only(right: width/18),
        child: Column(
          children: [
            SizedBox(height: height/40,),
            Container(
                padding: EdgeInsets.only(left: width/30),
                child: Column(
                  children: [
                    Text("What's your main",style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                    Text('goal? ',style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),)
                  ],
                )),
            SizedBox(height: height/18,),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Container(
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                    border: Border.all(color:widget._color1,width: 1),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: FlatButton(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Lose weight',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17,letterSpacing: 1),),
                    ],
                  ),
                  onPressed: (){},
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Container(
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color:widget._color1,width: 1),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: FlatButton(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Gain weight ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17,letterSpacing: 1)),
                    ],
                  ),
                  onPressed: (){
                    setState(() {
                      Color color;
                      color = widget._color1;
                      widget._color1 = widget._color2;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Container(
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color:widget._color1,width: 1),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: FlatButton(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Keep fit',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17,letterSpacing: 1),),
                    ],
                  ),
                  onPressed: (){},
                ),
              ),
            ),
            SizedBox(height: height/5,),
            Padding(
              padding:  EdgeInsets.only(left: width/15),
              child: Container(
                width: 320,
                height: 30,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(175, 129, 205, 40),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: FlatButton(
                  onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FormGender()),);},
                  child: Text('Next',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                ),
              ),
            ),
          ],
        ),
      ),*/
    );
  }
}
