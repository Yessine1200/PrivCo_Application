import 'package:flutter/material.dart';


class BuildAuth extends StatelessWidget {
  Color color1;
  Color color2;
  Function function;
  String title;


  BuildAuth(this.color1, this.color2, this.function, this.title);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 250,
      height: 30,
      decoration: BoxDecoration(
          color: color2,
          borderRadius: BorderRadius.circular(20)
      ),
      child: FlatButton(
        onPressed: function,
        child: Text(title,style: TextStyle(color: color1,fontWeight: FontWeight.bold,fontSize: 18),),
      ),
    );
  }
  }

