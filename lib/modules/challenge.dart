import 'package:flutter/material.dart';

class Challenge {
  final String id;
  final String title;
  final String imageUrl;
  final int days;
  final int price;
  final String aboutChallenge;
  final String users;

  const Challenge({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.days,
    @required this.price,
    @required this.aboutChallenge,
    @required this.users
  });


}