import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:privco/modules/coaches.dart';
import 'package:privco/screens/Pages/Coaches.dart';
import 'package:privco/screens/Pages/challenges.dart';
import 'package:privco/screens/Pages/food.dart';
import 'package:privco/screens/Pages/plan.dart';
import 'package:privco/screens/Pages/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';



class Home extends StatefulWidget {
  static const routeName = 'home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedPage = 0;
  final _pageOptions = [
    Plan(),
    Coaches(),
    Food(),
    Challenges(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[selectedPage],
      bottomNavigationBar: ConvexAppBar(
        color: Colors.black,
        backgroundColor: Colors.white,
        activeColor: Color.fromRGBO(175, 129, 205, 100),
        //cornerRadius: 30,
        items: [
          TabItem(icon: Icons.next_plan_outlined, title: 'Plan'),
          TabItem(icon: Icons.supervisor_account_outlined, title: 'Coaches'),
          TabItem(icon: Icons.food_bank_outlined, title: 'Food'),
          TabItem(icon: Icons.chalet_outlined, title: 'Challenges'),
          TabItem(icon: Icons.person, title: 'Profile'),
        ],
        initialActiveIndex: selectedPage, //optional, default as 0
        onTap: (int index) {
          setState(() {
            selectedPage = index;
          });
        },
      ),
    );
  }
}