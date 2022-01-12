import 'package:flutter/material.dart';
import 'package:privco/modules/meal.dart';
import 'package:privco/screens/home.dart';
import 'package:privco/widgets/Category/meal_category.dart';


class FavouritesScreen extends StatelessWidget {

  static const routeName = 'favourite_meals';

  final List<Meal> favouritesMeals;

  FavouritesScreen(this.favouritesMeals);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back,),onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));},),
        title: Text('My favourites Meals'),
        centerTitle: true,
      ),
      body: favouritesMeals.isEmpty?
             Center(
              child: Text("You have no favourite yet - start adding some"),
            ):
                ListView.builder(
                  itemBuilder: (ctx,index){
                    return MealCategory(
                        id:favouritesMeals[index].id,
                        title: favouritesMeals[index].title,
                        kcal:favouritesMeals[index].kcal,
                        imageUrl:favouritesMeals[index].imageUrl,
                        time:favouritesMeals[index].time
                   );
                  },
                        itemCount: favouritesMeals.length,

          )



    );


  }
}
