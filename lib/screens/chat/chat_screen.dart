
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'dart:core';
import 'package:privco/widgets/chat/message.dart';
import 'package:privco/widgets/chat/new_message.dart';

class ChatScreen extends StatefulWidget {
  final String name;
  ChatScreen(this.name);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  @override
  void initState(){
    super.initState();
    final fbm = FirebaseMessaging();
    fbm.requestNotificationPermissions();
    fbm.configure(onMessage: (msg){
      print(msg);
      return;
    },
      onLaunch: (msg){
        print(msg);
        return ;
      },
      onResume: (msg){
        print(msg);
        return;
      },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //backgroundColor: Colors.transparent,
        title: Text(widget.name),
      ),
      body:Container(
        child:  Column(
          children: [
            Expanded(child: Messages()),
            NewMessages()
          ],
        ),
      ),
    );
  }
}
