import 'package:flutter/material.dart';
import 'package:privco/screens/Forms/form.dart';
import 'package:privco/screens/Forms/form_phsic.dart';

class FormDay extends StatefulWidget {

static const routeName = 'form_day';


  @override
  _FormDayState createState() => _FormDayState();
}

class _FormDayState extends State<FormDay> {
  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(right: width/80),
        child: Column(
          children: [
            SizedBox(height: height/40,),
            Container(
            alignment: Alignment.center,
                padding: EdgeInsets.only(left: width/30),
            child: Column(
              children: [
                Text("What's does your typicale",style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                Text('    day look like?  ',style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),)
              ],
            )
        ),
            SizedBox(height: height/8,),
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
                              padding:EdgeInsets.only(left: 102,top: 60),
                              child: Image.asset('assets/images/9array.png',width: 60,)),
                          Container(
                            padding: EdgeInsets.only(top: 15,right: 4),
                            child: FlatButton(
                              onPressed: (){},
                              child:
                                  Text("At work/ school mostly seated ",maxLines: 4,style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.normal),),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: width/18,),
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
                              padding:EdgeInsets.only(left: 80,bottom: 3),
                              child: Image.asset('assets/images/machiy.png',width: 80,)),
                          Container(
                            padding: EdgeInsets.only(top: 15,right: 4),
                            child: FlatButton(
                              onPressed: (){},
                              child:
                              Text("Walking Daily",maxLines: 4,style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.normal),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height/20,),
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
                              padding:EdgeInsets.only(left: 75,top: 53),
                              child: Image.asset('assets/images/hagen.png',width: 78,height: 78,)),
                          Container(
                            padding: EdgeInsets.only(top: 15,right: 4),
                            child: FlatButton(
                              onPressed: (){},
                              child:
                              Text("working\nmostly\non foot",maxLines: 4,style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.normal),),
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
                              padding:EdgeInsets.only(left: 70,top: 40),
                              child: Image.asset('assets/images/merte7.png',width: 80,height: 78,)),
                          Container(
                            padding: EdgeInsets.only(top: 15,right: 0),
                            child: FlatButton(
                              onPressed: (){},
                              child:
                              Text("At home\nmostly\ninactive\n",maxLines: 4,style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.normal),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: height/10,),
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
                      MaterialPageRoute(builder: (context) => FormPhsyic()),);
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
