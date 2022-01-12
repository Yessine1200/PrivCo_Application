import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:privco/widgets/my_profile.dart';
import 'package:provider/provider.dart';


class Profile extends StatefulWidget {
  static const routeName = "profile";

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  String email;
  String age;
  String userName;
  String imageUser;
  String startingWeight;
  String height;
  String tragetWeight;


  _fetch() async {
    final user =  FirebaseAuth.instance.currentUser;
    final id = user.uid;
    if (user!=null){
      await FirebaseFirestore.instance
          .collection('users')
          .doc(id)
          .get()
          .then((value){
              email = value.data()['email'];
              userName = value.data()['username'];
              age = value.data()['age'];
              imageUser = value.data()['imageUser'];
              startingWeight = value.data()['startingWeight'];
              height = value.data()['height'];
              tragetWeight = value.data()['target weight'];


              print(email);
              print(imageUser);
      }).catchError((e){
        print(e);
      });
    }

    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        //leading: IconButton(icon:Icon(Icons.arrow_back),onPressed: (){},),
        backgroundColor: Color.fromRGBO(249, 241, 240, 100),
        elevation: 0,
        centerTitle: true,
        title: Text('My Profile'),
      ),
      body: FutureBuilder(
          future: _fetch(),
          builder: (context, snapshot){
            if (snapshot.connectionState != ConnectionState.done){
              return Center(child: CircularProgressIndicator(color: Colors.grey,),);
            }else{
              return MyProfile(userName, email, age, imageUser, startingWeight, height, tragetWeight);
            }
          }
        ),
    );
  }
}
