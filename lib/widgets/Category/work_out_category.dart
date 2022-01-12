import 'package:flutter/material.dart';
import 'package:privco/modules/work_out_library.dart';
import 'package:privco/screens/details/categories_workout.dart';

class WorkOutCategory extends StatelessWidget {

  final WorkOut workOut;

  WorkOutCategory(this.workOut);

  void selectCategory(BuildContext ctx){
    Navigator.of(ctx).pushNamed(CategoriesWorkout.routeName,
      arguments:{
        'id':workOut.id,
        'title':workOut.name
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.all(10),
      child: ListTile(
        onTap: ()=>selectCategory(context),
        leading: Container(
          width: 70,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color.fromRGBO(233, 234, 236, 100)
          ),
          child: Image.asset(workOut.image,),
        ),
        title: Text(workOut.name),
        subtitle: Text('${workOut.number} workouts'),
        trailing: Icon(Icons.arrow_forward_ios_outlined,size: 18,),
      ),
    );
  }
}
