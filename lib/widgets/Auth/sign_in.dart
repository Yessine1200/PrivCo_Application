import 'package:flutter/material.dart';
import 'package:privco/screens/Auth/auth_up.dart';
import 'package:privco/widgets/Auth/build_auth.dart';

class SignIn extends StatefulWidget {
  final void Function(String email, String password, String username, bool isLogin, BuildContext ctx) function;
  final bool isLoading;

  SignIn(this.function,this.isLoading);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  bool _isLogin = true;
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
    //Navigator.of(context).pushNamed(FormActivities.routName);


  }

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;

    return Container(
        padding: EdgeInsets.only(left: width/150),
        margin: EdgeInsets.only(top: height/20,left: width/12),
        width: width,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Container(
              margin: EdgeInsets.only(right: width/100,),
              padding: EdgeInsets.only(right: width/20),
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
                  if (widget.isLoading)
                    CircularProgressIndicator(),
                  if (!widget.isLoading)
                    FlatButton(
                      textColor: Color.fromRGBO(90, 90, 45, 20),
                      child: Column(
                        children: [
                          Text("Don't have an account?",style: TextStyle(fontSize: 14),),
                          Text('Create Account',style: TextStyle(fontSize: 14,decoration: TextDecoration.underline),)
                        ],
                      ),
                      onPressed: (){
                        setState(() {
                          _isLogin = !_isLogin;
                          Navigator.of(context).pushNamed(AuthUp.routeName);
                        });
                      },
                    ),
                  SizedBox(height: height/3,),
                  if (!widget.isLoading)
                    Container(
                        padding: EdgeInsets.only(right: width/28),
                        child: BuildAuth(Colors.white, Color.fromRGBO(175, 129, 205, 40), _submit, 'Continue'))
                ],
              ),
            ),
          ),
        ),

    );
  }
}
