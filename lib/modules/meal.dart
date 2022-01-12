import 'package:flutter/material.dart';

class Meal{
  final String id;
  final List category;
  final String title;
  final String imageUrl;
  final String time;
  final List<String> characteristic;
  final List<String> ingredients;
  final List<String> steps;
  final int kcal;
  final int protein;
  final int fat;
  final int carbs;

  const Meal({
    @required this.id,
    @required this.category,
    @required this.title,
    @required this.imageUrl,
    @required this.time,
    @required this.characteristic,
    @required this.ingredients,
    @required this.steps,
    @required this.kcal,
    @required this.protein,
    @required this.fat,
    @required this.carbs
  });


}