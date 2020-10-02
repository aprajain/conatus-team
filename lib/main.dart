import 'package:conatus_team/auth/login_page.dart';
import 'package:conatus_team/pages/attendance/attendancetab.dart';
import 'package:conatus_team/pages/search/search.dart';
import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';
import 'models/custombutton.dart';
import 'pages/attendance/attendance.dart';
import 'pages/home/mainPage.dart';
import 'pages/home/settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conatus',
      theme: ThemeData(
          primarySwatch: Colors.blueGrey, primaryColor: Colors.blueGrey[800]),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  FancyDrawerController _controller;
  Widget showpage = MainPage();
  DrawerState state = DrawerState.closed;
  bool isdraweropen = true;
  Color brown = Color.fromRGBO(31, 26, 22, 11);

  void page(int i) {
    setState(() {
      if (i == 0) {
        _controller.close();

        setState(() {
          isdraweropen = true;
        });
        showpage = MainPage();
      }
      if (i == 1) {
        _controller.close();

        setState(() {
          isdraweropen = true;
        });
        showpage = Search();
      }
      if (i == 3) {
        _controller.close();

        setState(() {
          isdraweropen = true;
        });
        showpage = Setting();
      }

      if (i == 4) {
        _controller.close();

        setState(() {
          isdraweropen = true;
        });
        showpage = AttendancePage();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = FancyDrawerController(
        vsync: this, duration: Duration(milliseconds: 250))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FancyDrawerWrapper(
        itemGap: 00,
        cornerRadius: 40,
        backgroundColor: Theme.of(context).primaryColor,
        controller: _controller,
        drawerItems: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        page(0);
                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/mypic.jpg'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mohit Kumar Singh',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text('App Developer',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ],
                    )
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customButton(
                      'HOME',
                      Icons.home,
                      () {
                        page(0);
                      },
                    ),
                    customButton('ATTENDANCE', Icons.person_outline, () {
                      page(4);
                    }),
                    customButton(
                      'SEARCH',
                      Icons.search,
                      () {
                        page(1);
                      },
                    ),
                    customButton('MEETINGS', Icons.bookmark_border, () {
                      page(0);
                    }),
                    // customButton('PROFILE', Icons.person, () {}),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        _controller.close();
                        page(3);
                        setState(() {
                          isdraweropen = true;
                        });
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'settings',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 2,
                      height: 20,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Log out',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        ],

        child: Scaffold(
            backgroundColor: Colors.blueGrey[100],
            appBar: AppBar(
              shadowColor: Colors.transparent,
              elevation: 0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isdraweropen
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              isdraweropen = false;
                              _controller.open();
                            });
                          },
                          icon: Icon(
                            Icons.menu,
                            color: Colors.black,
                          ),
                        )
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              isdraweropen = true;
                              _controller.close();
                            });
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                        ),
                  Text(
                    "Conatus",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              backgroundColor: Colors.transparent,
            ),
            body: showpage),
        // ),
      ),
    );
  }
}
