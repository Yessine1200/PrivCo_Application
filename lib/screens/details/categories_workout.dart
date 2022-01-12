import 'package:flutter/material.dart';
import 'package:privco/modules/exercice.dart';
import 'package:privco/widgets/Category/ExerciceCategory.dart';

class CategoriesWorkout extends StatefulWidget {

  static const routeName = 'categories_workout';

  final List<Exercice> availableExercices;

  CategoriesWorkout(this.availableExercices);

  @override
  _CategoriesWorkoutState createState() => _CategoriesWorkoutState();
}

class _CategoriesWorkoutState extends State<CategoriesWorkout> {

  String categoryTitle;
  List<Exercice> displayedExercices ;

  @override

  void didChangeDependencies() {
    final routeArg=ModalRoute.of(context).settings.arguments as Map<String,String>;
    final categoryId=routeArg['id'];
    categoryTitle=routeArg['title'];
    displayedExercices=widget.availableExercices.where((exercice){
      return exercice.category.contains(categoryId);

    }).toList();
    super.didChangeDependencies();
  }

  @override
  void initState(){

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle),elevation: 0,centerTitle: true,),
      body: Container(
        //color:  Color.fromRGBO(224,199,173,100),
        child: ListView.builder(
          itemBuilder: (ctx,index){
            return ExerciceCategory(
                id:displayedExercices[index].id,
                title: displayedExercices[index].title,
                time:displayedExercices[index].time,
                image:displayedExercices[index].image,
                //time:displayedMeals[index].time
            );
          },
          itemCount: displayedExercices.length,

        ),
      ),

    );
  }
}
