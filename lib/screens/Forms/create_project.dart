/*import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:async';

class CreateProject extends StatefulWidget {
static const routeName = 'create_project';

  @override
  _CreateProjectState createState() => _CreateProjectState();
}

class _CreateProjectState extends State<CreateProject> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
                    SizedBox(height: 270,),
                    Text("Creating Your Plan", style: TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    CircularPercentIndicator(
                        circularStrokeCap: CircularStrokeCap.round,
                        percent: percent,
                        animation: true,
                        animateFromLastPercent: true,
                        radius: 250.0,
                        lineWidth: 25.0,
                        progressColor: Colors.purple,
                        center:Text("$TimeInMinut",style: TextStyle(color: Colors.grey,fontSize: 80.0),) ,

              ),
          ],
        ),
      ),

    );
  }
}*/
