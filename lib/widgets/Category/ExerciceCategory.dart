import 'package:flutter/material.dart';


class ExerciceCategory extends StatelessWidget {
  final String id;
  final String title;
  final int time;
  final String image;

  ExerciceCategory({
    @required this.id,
    @required this.title,
    @required this.time,
    @required this.image
  });
  @override
  Widget build(BuildContext context) {
    return
    ListTile(
        title: Text(title,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
        subtitle: Text('$time Minutes'),
      trailing: Icon(Icons.arrow_forward_ios_outlined,size: 18,),
      leading: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Image.asset(image)
      ),
      );
  }
}
