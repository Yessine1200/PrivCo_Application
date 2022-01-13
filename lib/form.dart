import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {


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
  String _sallery = "";
  bool _obscureText = true;

  void _submit() {
    final isValid = (_formKey.currentState.validate());
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery
        .of(context)
        .size
        .width;
    final height = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("Create an Account", style: TextStyle(
            color: Color.fromRGBO(175, 129, 205, 40),
            fontSize: 18,
            fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: height / 20, left: width / 12),
        width: width / 1.2,
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
                    if ((val.isEmpty || !val.contains('@'))) {
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
                    labelStyle: TextStyle(color: Colors.black, fontSize: 16,),
                    border: const UnderlineInputBorder(),
                    filled: true,
                  ),
                ),
                SizedBox(height: height / 35,),
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
                    labelStyle: TextStyle(color: Colors.black, fontSize: 16,),
                    border: const UnderlineInputBorder(),
                    filled: true,
                  ),
                ),
                SizedBox(height: height / 35,),
                TextFormField(
                  key: ValueKey('password1'),
                  validator: (val) {
                    if (val.isEmpty || (val.length < 7)) {
                      return "Password must be at least 7 characters";
                    }
                    return null;
                  },
                  onChanged: (val) {
                    setState(() {
                      _password = val;
                    });
                  },
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.black, fontSize: 16,),
                      border: const UnderlineInputBorder(),
                      filled: true,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(_obscureText ? Icons.visibility : Icons
                            .visibility_off),
                      )
                  ),
                  obscureText: _obscureText,
                ),
                SizedBox(height: height / 35,),
                TextFormField(
                    key: ValueKey('sallery'),
                    validator: (val) {
                      if (val.isEmpty || (val.length < 7)) {
                        return "Password must be at least 7 characters";
                      }
                      return null;
                    },
                    onChanged: (val) {
                      setState(() {
                        _sallery = val;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "Sallery",
                      labelStyle: TextStyle(color: Colors.black, fontSize: 16,),
                      border: const UnderlineInputBorder(),
                      filled: true,
                    )
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}