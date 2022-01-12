import 'package:flutter/material.dart';
import 'package:privco/dummy_data.dart';
import 'package:privco/widgets/Category/work_out_category.dart';


class WorkOut extends StatelessWidget {

  static const routeName = 'work_out';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/logo.png',width: 60,height: 50,),
        elevation: 0,
        title: Text('Training.',textAlign: TextAlign.start,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
        automaticallyImplyLeading:false,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) => WorkOutCategory(WORK_OUT_LIBRARY[index]),
        itemCount: WORK_OUT_LIBRARY.length,
      ),
    );
  }
}
