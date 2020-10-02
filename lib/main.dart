import 'package:conatus_team/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'auth/auth.dart';
import 'models/user.dart';
import 'pages/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthServices().user,
      child: MaterialApp(
        title: 'Conatus',
        theme: ThemeData(
            primarySwatch: Colors.blueGrey, primaryColor: Colors.blueGrey[800]),
        home: Wrapper(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
