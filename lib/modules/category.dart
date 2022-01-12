import 'package:flutter/material.dart';

class Category{
  final String id;
  final String title;
  final String etitle;
  final String subtitle;
  final String iconImage;
  final String image;
  final String opinion;

 const Category({
    @required this.id,
    @required this.title,
    @required this.etitle,
    @required this.subtitle,
    @required this.iconImage,
    @required this.image,
    @required this.opinion
});
}