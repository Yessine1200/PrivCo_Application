import 'package:flutter/material.dart';
import 'package:privco/dummy_data.dart';
import 'package:privco/widgets/Category/challenge_category.dart';

class Challenges extends StatefulWidget {

  @override
  _ChallengesState createState() => _ChallengesState();
}

class _ChallengesState extends State<Challenges> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

        toolbarHeight: 70,
        leading: Image.asset('assets/images/logo.png',),
        elevation: 0,
        title: Text('Guided Challenges.',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index) => ChallengeCategory(DUMMY_CHALLENGES[index]),
          itemCount: DUMMY_CHALLENGES.length,
      ),
    );
  }
}
