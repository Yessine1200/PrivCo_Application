import 'package:flutter/material.dart';
import 'package:privco/dummy_data.dart';


class MealDetailScreen extends StatelessWidget {
  static const routeName = 'meal_detail_screen';
  final Function toggleFavourite;
  final Function isFavourite;

  MealDetailScreen(this.toggleFavourite,this.isFavourite);


  Widget buildSectionTitle(BuildContext context,String text){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(text,style: Theme.of(context).textTheme.title,),
    );
  }


  Widget buildContainer(Widget child){
    return  Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),

      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,
      child: child,
    );
  }


  Widget buildCont(Widget child, double width, double height, double border) {
    return Container(
      //margin: EdgeInsets.only(left: 90,top: 30),
      //padding: EdgeInsets.only(left: 20),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Color.fromRGBO(220,220,220,80),
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.circular(border),
      ),
      child: child,
    );
  }



  @override
  Widget build(BuildContext context) {
    final mealId=ModalRoute.of(context).settings.arguments as String;
    final selectedMeal=DUMMY_Meals.firstWhere((meal) => meal.id==mealId);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:Text(selectedMeal.title,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                ),
                child: Image.asset(selectedMeal.imageUrl,fit: BoxFit.cover,height: 250,),
              ),
            ),
            SizedBox(height: 20,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildCont(Container(alignment: Alignment.center,child: Text(selectedMeal.characteristic[0])),100,30,10),
                  SizedBox(width: 10,),
                  buildCont(Container(alignment:Alignment.center,child: Text(selectedMeal.characteristic[1])),100,30,10),
                ],
              ),
            SizedBox(height: 30,),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 60,),
                    buildCont(Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text('${selectedMeal.kcal}',style: TextStyle(fontSize: 15),),SizedBox(height: 20,), Text('Kcal',style: TextStyle(color: Colors.grey),),],),55,85,20),
                    SizedBox(width: 20,),
                    buildCont(Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text('${selectedMeal.protein}',style: TextStyle(fontSize: 15),),SizedBox(height: 20,),Text('protein',style: TextStyle(color: Colors.grey),),],),55,85,20),
                    SizedBox(width: 20,),
                    buildCont(Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text('${selectedMeal.fat}',style: TextStyle(fontSize: 15),), SizedBox(height: 20,),Text('Fat',style: TextStyle(color: Colors.grey),),],),55,85,20),
                    SizedBox(width: 20,),
                    buildCont(Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text('${selectedMeal.carbs}',style: TextStyle(fontSize: 15),),SizedBox(height: 20,),Text('Carbs',style: TextStyle(color: Colors.grey),),],),55,85,20),
                  ],
                ),
                SizedBox(width: 100,height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Cooking time:',style: TextStyle(color: Colors.grey),),
                    SizedBox(width: 10,),
                    Icon(Icons.schedule,color: Colors.red,),
                    SizedBox(width: 10,),
                    Text(selectedMeal.time,style: TextStyle(color: Colors.red),)
                  ],
                )
              ],
            ),
            SizedBox(height: 30,),
            buildSectionTitle(context, "Ingredients"),
            buildContainer(ListView.builder(
              itemBuilder: (ctx,index)=>Card(
                color: Color.fromRGBO(224,199,173,100),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  child: Text(selectedMeal.ingredients[index]),
                ),
              ),
              itemCount: selectedMeal.ingredients.length,
            ) ,),
            buildSectionTitle(context, "Steps"),
            buildContainer(ListView.builder(
              itemBuilder: (ctx,index)=>Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor:Color.fromRGBO(90, 90, 42, 50),
                      child: Text("#${index+1}",style: TextStyle(color: Colors.black),),
                    ),
                    title: Text(selectedMeal.steps[index],style: TextStyle(color: Color.fromRGBO(90, 90, 42, 50)),),
                  ),
                  Divider(),
                ],
              ),
              itemCount: selectedMeal.steps.length,
            ),)
          ],
        ),
      ),


      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(175,129,205,100),
        onPressed:( )=>toggleFavourite(mealId),
        child: Icon(
          isFavourite(mealId)? Icons.star :Icons.star_border,
        ),
      ),

    );
  }

}
