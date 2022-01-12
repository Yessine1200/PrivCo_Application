import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:privco/dummy_data.dart';
import 'package:privco/widgets/Category/food_category.dart';

class Food extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Choose your Category',textAlign: TextAlign.start,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
        toolbarHeight: 80,
          automaticallyImplyLeading:false,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) => FoodCategory(DUMMY_CATEGORIES[index]),
        itemCount: DUMMY_CATEGORIES.length,
      ),
    );
  }
}



