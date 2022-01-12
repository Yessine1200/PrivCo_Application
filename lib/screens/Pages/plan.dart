import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:privco/dummy_data.dart';
import 'package:privco/widgets/Category/plan_category.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';



class Plan extends StatefulWidget {

  @override
  _PlanState createState() => _PlanState();
}

class _PlanState extends State<Plan> {
  final now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Column(
            children: [
              Text('Personal Plan برنامجي',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              Text('${DateFormat('EEEE, MMM d yyyy').format(now)}',style: TextStyle(color: Colors.grey,fontSize: 15),)
            ],
          ),
        ),
        titleSpacing:1,
        toolbarHeight: 100,
        leading: Image.asset('assets/images/logo.png',width: 60,height: 50,),
        leadingWidth:80,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) => PlanCategory(DUMMY_PLAN[index]),
        itemCount: DUMMY_PLAN.length,
      ),
    );
  }
}
