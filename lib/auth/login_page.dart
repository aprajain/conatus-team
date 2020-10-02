import 'package:conatus_team/auth/registerPage.dart';
import 'package:conatus_team/main.dart';
import 'package:conatus_team/models/form_deco.dart';
import 'package:conatus_team/pages/home/home.dart';
import 'package:conatus_team/pages/home/mainPage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthServices _auth = AuthServices();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  //text field state
  String email = '';
  String password = '';
  String error = '';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print(MediaQuery.of(context).size.height);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blueGrey,
              Colors.blueGrey[900],
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              height: height * .7,
              width: width * .8333,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.9),
                  borderRadius: BorderRadius.circular(20)),
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Positioned(
                      top: -50,
                      left: MediaQuery.of(context).size.width * .265,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: width * .15,
                            backgroundImage:
                                AssetImage('images/conatusBlack.jpeg'),
                          ),
                        ],
                      )),
                  Positioned(
                    top: height * .16,
                    child: Container(
                      width: width * .83,
                      padding: EdgeInsets.all(8),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w300),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration:
                                    textDeco.copyWith(labelText: 'Email'),
                                maxLines: 1,
                                validator: (val) =>
                                    val.isEmpty ? 'Enter an email' : null,
                                onChanged: (val) {
                                  setState(() => email = val);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration:
                                    textDeco.copyWith(labelText: 'Password'),
                                obscureText: true,
                                validator: (val) => val.length < 6
                                    ? 'Password must have min 6 chars'
                                    : null,
                                onChanged: (val) {
                                  setState(() => password = val);
                                },
                              ),
                            ),
                            SizedBox(height: 4),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text('Forgot Password? ',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    //fontStyle: FontStyle.italic,
                                    //decoration: TextDecoration.underline,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -20,
                    left: width * 0.27,
                    child: GestureDetector(
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.cyan[600],
                              borderRadius: BorderRadius.circular(30)),
                          child: Text('Sign in',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400))),
                      onTap: () async {
                        // Navigator.pushReplacement(context,
                        //     MaterialPageRoute(builder: (_) => HomeScreen()));
                        if (_formKey.currentState.validate()) {
                          setState(() => loading = true);
                          dynamic result =
                              await _auth.signInEmail(email, password);
                          if (result == null) {
                            setState(() {
                              error = 'please supply a valid email';
                              loading = false;
                            });
                          }
                        }
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 40),
                      child: RichText(
                        text: TextSpan(
                          text: 'Don\'t have an Account ? ',
                          style: TextStyle(color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Signup here',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterPage()),
                                  );
                                },
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontStyle: FontStyle.italic,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
