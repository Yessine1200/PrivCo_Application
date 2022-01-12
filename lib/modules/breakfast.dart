import 'package:flutter/material.dart';

class Breakfast{
  final String id;
  final String title;
  final String text;
  final int carbs;
  final int protein;
  final int fats;

  const Breakfast({
    @required this.id,
    @required this.title,
    @required this.text,
    @required this.carbs,
    @required this.protein,
    @required this.fats
  });

}