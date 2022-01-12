import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:privco/screens/Forms/form_activitie.dart';
import 'package:privco/widgets/Auth/sign_in.dart';
import 'package:privco/widgets/Auth/sign_up.dart';



class AuthUp extends StatefulWidget {
  static const routeName = 'authup';

  @override
  _AuthUpState createState() => _AuthUpState();
}

class _AuthUpState extends State<AuthUp> {
  final _auth = FirebaseAuth.instance;
  bool _isLoading = false;
  bool hasException = false;


  void _submitAuthForm(String email, String password, String username ,bool isLogin, BuildContext ctx) async{

    UserCredential authResult;

    try {
      setState(() {
        _isLoading = true;
      });
      if (isLogin){
        authResult = await _auth.signInWithEmailAndPassword(
            email: email,
            password: password
        );
      }else{
        authResult = await _auth.createUserWithEmailAndPassword(email: email, password: password);

       await FirebaseFirestore.instance
            .collection('users')
            .doc(authResult.user.uid)
            .set({
          'username': username,
          'password' : password,
          'email': email,
        });
      }

    } on FirebaseAuthException catch (e) {
      String message = "error Occurred";

      if (e.code == 'weak-password') {
        message = "The password provided is too weak.";
      } else if (e.code == 'email-already-in-use') {
        message = 'The account already exists for that email.';
      } else if (e.code == 'user-not-found') {
        message = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        message = 'Wrong password provided for that user.';
      }
      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
        content: Text(message),
        backgroundColor: Theme.of(ctx).errorColor,
      ));
    } catch (e) {
      print(e);
      setState(() {
        _isLoading = true;
      });
    }
    finally {
      if (!hasException) {
        setState(() {
          _isLoading = false;
        });

        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => FormActivities()));
      } else {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator(),);
          } else if(snapshot.hasData){
            return FormActivities();
          } else if (snapshot.hasError){
            return Center(child: Text('Something Went Wrong!'),);
          } else {
            return SignUp(_submitAuthForm, _isLoading);
          }
        }
      )
    );
  }
}
