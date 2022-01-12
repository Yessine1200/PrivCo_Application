import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'form_body.dart';


class FormOld extends StatefulWidget {
  static const routeName = 'form_old';

  @override
  _FormOldState createState() => _FormOldState();
}

class _FormOldState extends State<FormOld> {
  TextEditingController age = TextEditingController();

  sendData() async {
    bool hasException = false;
    final user =  FirebaseAuth.instance.currentUser;
    final id = user.uid;
    try {
      await FirebaseFirestore.instance.collection('users').doc(id).update({
        'age': age.text.trim(),
      });
    } catch (e) {
      hasException = true;
    }
  }
  String _age;
  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
        ),
        body: Container(
          padding: EdgeInsets.only(left: width*0.1,right: width*0.1),
          child: SingleChildScrollView(
            child: Column(
                    children: [
                      SizedBox(height: height/40,),
                        Container(
                           child: Text('How old are you? ',style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),)
                      ),
                      SizedBox(height: height/5,),
                        Container(
                          width: 220,
                          child: TextFormField(
                            controller: age,
                            cursorColor: Color.fromRGBO(175, 129, 205, 40),
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),
                            keyboardType: TextInputType.phone,
                            onSaved: (value){
                              _age = value;
                            },
                          ),
                        ),
                      SizedBox(height: height/3,),
                      Container(
                          width: 320,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(175, 129, 205, 40),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: FlatButton(
                            onPressed: (){
                              sendData();
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => FormBody()),);
                            },
                            child: Text('Next',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                          ),
                        ),


                    ]
    ),
          ),
        ),
    );
  }
}
