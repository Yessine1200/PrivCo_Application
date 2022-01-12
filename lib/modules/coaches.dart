import 'package:flutter/material.dart';

class Coach{
  final String id;
  final String name;
  final String imageUrl;
  final String experience;
  final String cost;
  final String workPlace;
  final List field;
  final String rate;
  final String phoneNumber;
  final String email;
  final String trophies;
  final List<String> images;
  final String imgWorkplace;
  final double width;
  final double height;

  const Coach({
    @required this.id,
    @required this.name,
    @required this.imageUrl,
    @required this.experience,
    @required this.cost,
    @required this.workPlace,
    @required this.field,
    @required this.rate,
    @required this.phoneNumber,
    @required this.email,
    @required this.trophies,
    @required this.images,
    @required this.imgWorkplace,
    @required this.width,
    @required this.height
  });
}