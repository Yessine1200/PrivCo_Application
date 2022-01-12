import 'package:flutter/material.dart';
import 'package:privco/modules/coaches.dart';
import 'package:privco/screens/details/coach_detail.dart';


class CoachCategory extends StatelessWidget {
  final Coach coach;

   CoachCategory(this.coach) ;

  void selectCoach(BuildContext ctx){
    Navigator.push(
      ctx,
      MaterialPageRoute(builder: (context) => CoachDetail(coach.id, coach.name, coach.imageUrl, coach.experience, coach.cost, coach.workPlace, coach.field, coach.rate, coach.phoneNumber, coach.email, coach.trophies, coach.images, coach.imgWorkplace, coach.width,coach.height)),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(8),
      width: 100,
      height: 120,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(18))
      ),
      child: ListTile(
        leading: ClipOval(
          child: Container(
              height: 50,
              child: Image.asset(coach.imageUrl,width: 50,height: 28,)),
        ),
        title: Text(coach.name,style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
        subtitle: Text(coach.trophies,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
        onTap: ()=>selectCoach(context),
        trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,color: Colors.black,),
        hoverColor: Color.fromRGBO(175, 129, 205, 40),
      ),
    );
  }
}