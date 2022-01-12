import 'package:flutter/material.dart';
import 'package:privco/modules/plan.dart';

class PlanCategory extends StatelessWidget {
final Plan plan;

PlanCategory(this.plan);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(8),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(18),topRight: Radius.circular(18),bottomLeft: Radius.circular(18),bottomRight: Radius.circular(18))
      ),
      child: ListTile(
        leading: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: plan.color,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Image.asset(plan.image,width: 50,)
        ),
        title: Text(plan.title,style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
      subtitle: Text(plan.subtitle,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
      onTap: (){
          Navigator.pushNamed(context, plan.routeName);
      },
      trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,color: Colors.black,),
      hoverColor: Color.fromRGBO(175, 129, 205, 40),
      ),


    );
  }
}
