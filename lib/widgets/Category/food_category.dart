import 'package:flutter/material.dart';
import 'package:privco/modules/category.dart';
import 'package:privco/screens/details/categories_details.dart';



class FoodCategory extends StatelessWidget {
  final Category category;

  FoodCategory( this.category);

  void selectCategory(BuildContext ctx){
    Navigator.of(ctx).pushNamed(CategoriesDetails.routeName,
      arguments:{
        'id':category.id,
        'title':category.title
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(8),
      width: 100,
      height: 90,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(18),topRight: Radius.circular(18),bottomLeft: Radius.circular(18),bottomRight: Radius.circular(18))
      ),
      child: ListTile(
        leading: ClipOval(
          child: Container(
              height: 50,
              child: Image.asset(category.iconImage,width: 28,)),
        ),
        title: Text(category.title,style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
        subtitle: Text(category.subtitle,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
        onTap: ()=>selectCategory(context),
        trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,color: Colors.black,),
        hoverColor: Color.fromRGBO(175, 129, 205, 40),
      ),
    );
  }
}