import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:privco/provider/google_sign_in.dart';
import 'package:privco/screens/Auth/auth_in.dart';
import 'package:privco/screens/Forms/form_activitie.dart';
import 'package:privco/widgets/Auth/build_auth.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  final void Function(String email, String password, String username, bool isLogin, BuildContext ctx) function;
  final bool isLoading;

  SignUp(this.function,this.isLoading);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var loading = false;

  final _formKey = GlobalKey<FormState>();
  bool _isLogin = false;
  String _email = "";
  String _password = "";
  String _username = "";
  bool _obscureText = true;

  void _submit() {
    final isValid = (_formKey.currentState.validate());
    FocusScope.of(context).unfocus();

    if (isValid) {
      _formKey.currentState.save();
      widget.function(_email.trim(), _password.trim(), _username.trim(),_isLogin, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("Create an Account",style: TextStyle(color: Color.fromRGBO(175, 129, 205, 40),fontSize: 18,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: height/20,left: width/12),
        width: width/1.2,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  cursorColor: Color.fromRGBO(175, 129, 205, 40),
                  autocorrect: false,
                  enableSuggestions: false,
                  textCapitalization: TextCapitalization.none,
                  key: ValueKey('email'),
                  validator: (val) {
                    if ((val.isEmpty || !val.contains('@')) ) {
                      return "Please enter a valid email address";
                    }
                    return null;
                  },
                  onChanged: (val) {
                    setState(() {
                      _email = val;
                    });
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    labelStyle: TextStyle(color: Colors.black,fontSize: 16,),
                    border: const UnderlineInputBorder(),
                    filled: true,
                  ),
                ),
                SizedBox(height: height/35,),
                TextFormField(
                  autocorrect: true,
                  enableSuggestions: false,
                  textCapitalization: TextCapitalization.words,
                  key: ValueKey('username'),
                  validator: (val) {
                    if (val.isEmpty || val.length < 4) {
                      return "Please enter at least 4 characters";
                    }
                    return null;
                  },
                  onChanged: (val) {
                    setState(() {
                      _username = val;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.black,fontSize: 16,),
                    border: const UnderlineInputBorder(),
                    filled: true,
                  ),
                ),
                SizedBox(height: height/35,),
                TextFormField(
                  key: ValueKey('password1'),
                  validator: (val) {
                    if (val.isEmpty || (val.length < 7)) {
                      return "Password must be at least 7 characters";
                    }
                    return null;
                  },
                  onChanged: (val){
                    setState(() {
                      _password = val;
                    });
                  },
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.black,fontSize: 16,),
                      border: const UnderlineInputBorder(),
                      filled: true,
                      suffixIcon: GestureDetector(
                        onTap: (){
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(_obscureText? Icons.visibility: Icons.visibility_off),
                      )
                  ),
                  obscureText: _obscureText,
                ),
                SizedBox(height: height/35,),
                TextFormField(
                  key: ValueKey('password'),
                  validator: (val) {
                    if (val.isEmpty || (val.length < 7)) {
                      return "Password must be at least 7 characters";
                    }
                    return null;
                  },
                  onChanged: (val){
                    setState(() {
                      _password = val;
                    });
                  },
                  decoration: InputDecoration(
                      labelText: "Verify Password     ثبت يهديك ربي",
                      labelStyle: TextStyle(color: Colors.black,fontSize: 16,),
                      border: const UnderlineInputBorder(),
                      filled: true,
                      suffixIcon: GestureDetector(
                        onTap: (){
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(_obscureText? Icons.visibility: Icons.visibility_off),
                      )
                  ),
                  obscureText: _obscureText,
                ),
                SizedBox(height: height/35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton.icon(
                      onPressed: (){
                        signInWithFacebook();
                      },
                      icon: Icon(Icons.facebook),
                      label: Text(''),
                    ),
                    TextButton.icon(
                      onPressed: (){
                        final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                        provider.googleLogin();
                      },
                      icon: FaIcon(FontAwesomeIcons.google, color: Colors.red, size: 20,),
                      label: Text(''),
                    ),
                  ],
                ),
                if (!widget.isLoading)
                  FlatButton(
                    textColor: Color.fromRGBO(90, 90, 45, 20),
                    child: Column(
                      children: [
                        Text("Already have an account?compte عندك déjà ",style: TextStyle(fontSize: 14),),
                        Text('Log in',style: TextStyle(fontSize: 14,decoration: TextDecoration.underline),)
                      ],
                    ),
                    onPressed: (){
                      setState(() {
                        _isLogin = !_isLogin;
                        Navigator.of(context).pushNamed(AuthForm.routeName);
                      });
                    },
                  ),
                SizedBox(height: height/15,),
                if (widget.isLoading)
                  CircularProgressIndicator(),
                if (!widget.isLoading)
                  BuildAuth(Colors.white, Color.fromRGBO(175, 129, 205, 40), _submit, 'Continue')

              ],
            ),
          ),
        ),
      ),
    );

  }
  Future<UserCredential> signInWithFacebook() async {
    Map<String, dynamic> _userData;

    String welcome = "Facebook";


    final LoginResult result = await FacebookAuth.instance.login(permissions:['email']);


    if (result.status == LoginStatus.success) {

      final userData = await FacebookAuth.instance.getUserData();

      _userData = userData;
    } else {
      print(result.message);
    }

    setState(() {
      welcome = _userData['email'];
    });


    final AuthCredential facebookAuthCredential = FacebookAuthProvider.credential(result.accessToken.token);

    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }

}
