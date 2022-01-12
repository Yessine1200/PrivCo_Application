import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:privco/screens/home.dart';
import 'package:privco/widgets/Auth/sign_in.dart';



class AuthForm extends StatefulWidget {
  static const routeName = 'auth_form';

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
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
            context, MaterialPageRoute(builder: (_) => Home()));
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Log In",style: TextStyle(color: Color.fromRGBO(175, 129, 205, 40),fontSize: 18,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SignIn(_submitAuthForm, _isLoading),
    );
  }
}
