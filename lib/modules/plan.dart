import 'package:flutter/material.dart';

class Plan{
  final String id;
  final String title;
  final String subtitle;
  final String image;
  final Color color;
  final String routeName;

  const Plan({
    @required this.id,
    @required this.title,
    @required this.subtitle,
    @required this.image,
    @required this.color,
    this.routeName
  });
}