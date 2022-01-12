import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:privco/screens/Pages/profile.dart';
import 'package:privco/screens/home.dart';

class StratingWeight extends StatefulWidget {

  @override
  _StratingWeightState createState() => _StratingWeightState();
}

class _StratingWeightState extends State<StratingWeight> {
  TextEditingController weight = TextEditingController();
  final _formKey = GlobalKey<FormState>();




  sendData() async {
    final isValid = (_formKey.currentState.validate());
    FocusScope.of(context).unfocus();
    if (isValid) {
      _formKey.currentState.save();
      bool hasException = false;
      final user =  FirebaseAuth.instance.currentUser;
      final id = user.uid;
      try {
        await FirebaseFirestore.instance.collection('users').doc(id).update({
          'startingWeight': weight.text.trim(),
        });
      } catch (e) {
        hasException = true;
      }
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=>Home()
          )
      );

    }

  }
  String _weight;
  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        //automaticallyImplyLeading: false,
      ),
      body: Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.only(right: width/18),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height/40,),
                Container(
                    padding: EdgeInsets.only(left: width/10),
                    child: Text('Your starting weight ',style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),)
                ),
                SizedBox(height: height/5,),
                Container(
                  margin: EdgeInsets.only(left: width/10),
                  width: 220,
                  child:
                      Form(
                        key: _formKey,
                        child: TextFormField(
                          controller: weight,
                          cursorColor: Color.fromRGBO(175, 129, 205, 40),
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),
                          keyboardType: TextInputType.phone,
                          validator: (value) {
                            if ((value.isEmpty ) ) {
                              return "Please enter a valid weight";
                            }
                            return null;
                          },
                          onSaved: (value){
                            _weight = value;
                          },
                        ),
                      ),

                ),
                SizedBox(height: height/3,),
                Padding(
                  padding:  EdgeInsets.only(left: width/10),
                  child: Container(
                    width: 320,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(175, 129, 205, 40),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: FlatButton(
                      onPressed: (){
                        sendData();
                      },
                      child: Text('Save',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                    ),
                  ),
                ),

              ]
          ),
        ),
      ),
    );
  }
}
