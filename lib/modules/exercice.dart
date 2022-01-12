import 'package:flutter/material.dart';


class Exercice {
  final String id;
  final String title;
  final List<String> category;
  final int time;
  final String image;

  const Exercice({
    @required this.id,
    @required this.title,
    @required this.category,
    @required this.time,
    @required this.image
});
}