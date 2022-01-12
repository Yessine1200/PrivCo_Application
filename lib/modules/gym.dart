import 'package:flutter/material.dart';


class Gym{
  final String id;
  final String name;
  final List<String> images;
  final List<String> categories;

  const Gym({
    @required this.id,
    @required this.name,
    @required this.images,
    @required this.categories
});
}