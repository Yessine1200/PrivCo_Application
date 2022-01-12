import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:privco/dummy_data.dart';
import 'package:privco/modules/coaches.dart';
import 'package:privco/widgets/Category/Coach_Category.dart';

class Coaches extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Choose your Coach',textAlign: TextAlign.start,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
        toolbarHeight: 80,
        automaticallyImplyLeading:false,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) => CoachCategory(DUMMY_COACHES[index]),
        itemCount: DUMMY_COACHES.length,
      ),
    );
  }
}



