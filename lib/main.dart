import 'package:conatus_team/auth/login_page.dart';
import 'package:conatus_team/models/constants.dart';
import 'package:conatus_team/models/theme.dart';
import 'package:conatus_team/pages/attendance/attendancetab.dart';
import 'package:conatus_team/pages/profile/profile.dart';
import 'package:conatus_team/pages/profile/profilepage.dart';
import 'package:conatus_team/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.rubikTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => AttendancePage()));
              },
              child: element(elementText('Attendance'))),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (_) => LoginPage()));
          //   },
          //   child: element(
          //     elementText('Login'),
          //   ),
          // ),
          GestureDetector(
            onTap: () {
              if (Information.name == null) {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Register()));
              } else {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ProfilePage()));
              }
            },
            child: element(
              elementText('Profile'),
            ),
          )
        ],
      ),
    ));
  }
}
