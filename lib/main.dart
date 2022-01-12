import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:privco/dummy_data.dart';
import 'package:privco/provider/google_sign_in.dart';
import 'package:privco/screens/Auth/auth_in.dart';
import 'package:privco/screens/Auth/auth_screen.dart';
import 'package:privco/screens/Auth/auth_up.dart';
import 'package:privco/screens/Forms/form.dart';
import 'package:privco/screens/Forms/form_activitie.dart';
import 'package:privco/screens/Pages/profile.dart';
import 'package:privco/screens/SplashScreen.dart';
import 'package:privco/screens/details/categories_details.dart';
import 'package:privco/screens/details/categories_workout.dart';
import 'package:privco/screens/details/meal_detail_screen.dart';
import 'package:privco/screens/favourites/favourites_screen.dart';
import 'package:privco/screens/home.dart';
import 'package:privco/widgets/my_profile.dart';
import 'package:privco/widgets/plan_detail/WorkOut.dart';
import 'package:privco/widgets/plan_detail/add_food.dart';
import 'package:privco/widgets/plan_detail/fasting.dart';
import 'package:privco/widgets/plan_detail/mind_plan.dart';
import 'package:provider/provider.dart';

import 'modules/exercice.dart';
import 'modules/meal.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  await UserSimplePreferences.init();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
    String title1 = 'Sign In';
    String title2 = 'Create Account';

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> _availableMeals=DUMMY_Meals;
  List<Exercice> _availableExercices=DUMMY_EXERCICES;
  List<Meal> _favouritesMeals=[];



  void _toggleFavourite(String mealId){
    final existingIndex=_favouritesMeals.indexWhere((meal) => meal.id==mealId);

    if (existingIndex>=0){
      setState(() {
        _favouritesMeals.removeAt(existingIndex);
      });
    }
    else {
      setState(() {
        _favouritesMeals.add(DUMMY_Meals.firstWhere((meal) => meal.id==mealId));
      });
    }

  }

  bool _isMealFavourite(String id){
    return _favouritesMeals.any((meal) => meal.id==id);
  }




  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context)=> GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.white,
          primarySwatch: Colors.deepPurple,
          buttonTheme: ButtonTheme.of(context).copyWith(
            buttonColor: Colors.deepPurple,
            textTheme: ButtonTextTheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )
          )
        ),
        home: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (ctx, snapShot) {
              if (snapShot.connectionState == ConnectionState.waiting) {
                return SplashScreen();
              }
              if (snapShot.hasData) {
                return AuthForm();
              } else {
                return AuthScreen();
              }
            }
        ),
        routes: {
          FavouritesScreen.routeName:(context)=>FavouritesScreen(_favouritesMeals),
          AuthForm.routeName:(context)=>AuthForm(),
          AuthUp.routeName:(context)=>AuthUp(),
          FormCo.routeName:(context)=>FormCo(),
          FormActivities.routName:(context)=>FormActivities(),
          Home.routeName:(context)=>Home(),
          CategoriesDetails.routeName:(context)=>CategoriesDetails(_availableMeals),
          MealDetailScreen.routeName:(context)=>MealDetailScreen(_toggleFavourite,_isMealFavourite),
          MindPlan.routeName:(context)=>MindPlan(),
          Fasting.routeName:(context)=>Fasting(),
          AddFood.routeName:(context)=>AddFood(),
          WorkOut.routeName:(context)=>WorkOut(),
          CategoriesWorkout.routeName:(context)=>CategoriesWorkout(_availableExercices),
          Profile.routeName:(context)=>Profile()
        },
        //home:AuthScreen(),
      ),
    );
  }
}


class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: null,
    );
  }
}


