import 'package:flutter/material.dart';
import 'package:privco/dummy_data.dart';
import 'package:privco/modules/meal.dart';
import 'package:privco/screens/details/portfolio_silver_app_bar.dart';
import 'package:privco/widgets/Category/meal_category.dart';


class CategoriesDetails extends StatefulWidget {

  static const routeName = 'categories_details';

  final List<Meal> availableMeals;

  CategoriesDetails(this.availableMeals);

  @override
  _CategoriesDetailsState createState() => _CategoriesDetailsState();
}

class _CategoriesDetailsState extends State<CategoriesDetails> {

  String categoryTitle;
  List<Meal> displayedMeals ;

  @override
  void didChangeDependencies() {
    final routeArg=ModalRoute.of(context).settings.arguments as Map<String,String>;
    final categoryId=routeArg['id'];
    categoryTitle=routeArg['title'];
    displayedMeals=widget.availableMeals.where((meal){
      return meal.category.contains(categoryId);

    }).toList();
    super.didChangeDependencies();
  }

  @override
  void initState(){

    super.initState();
  }


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle),),
      body: Container(
        color:  Color.fromRGBO(224,199,173,100),
        child: ListView.builder(
          itemBuilder: (ctx,index){
            return MealCategory(
                id:displayedMeals[index].id,
                title: displayedMeals[index].title,
                kcal:displayedMeals[index].kcal,
                imageUrl:displayedMeals[index].imageUrl,
                time:displayedMeals[index].time
            );
          },
          itemCount: displayedMeals.length,

        ),
      ),

    );
  }
}
