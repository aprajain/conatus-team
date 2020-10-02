import 'package:conatus_team/models/constants.dart';
import 'package:conatus_team/models/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'editprofile.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  //TabController _tabController;

  Future _urllaunch(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
      );
    } else {
      throw 'could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(
              Icons.edit,
            ),
            onPressed: () {
              //Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Edit()));
            },
          )
        ],
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        //height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.teal[200],
                        Colors.teal[700],
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(30, 20),
                          bottomRight: Radius.elliptical(30, 20)),
                      color: Colors.grey[200],
                    ),
                    height: 300,
                  ),
                  Positioned(
                    bottom: -130,
                    left: MediaQuery.of(context).size.width * 0.15,
                    child: Container(
                      height: 250,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      padding: EdgeInsets.only(top: 80, bottom: 20),
                      child: Column(
                        children: [
                          Text(
                            Information.name,
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            Information.tech,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            Information.branch,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[600],
                            ),
                          ),
                          Spacer(),
                          Divider(
                            height: 40,
                            color: Colors.black,
                            indent: 30,
                            endIndent: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  _urllaunch('mailto: apra.jain01@gmail.com');
                                },
                                child: Icon(Icons.mail),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    _urllaunch('tel: +918604601091');
                                  },
                                  child: Icon(Icons.phone_android)),
                              GestureDetector(
                                onTap: () {
                                  _urllaunch('https://www.github.com/aprajain');
                                },
                                child: Icon(FontAwesomeIcons.github),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _urllaunch(
                                      'https://www.linkedin.com/in/apra-jain-8118731b7/');
                                },
                                child: Icon(FontAwesomeIcons.linkedin),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    left: MediaQuery.of(context).size.width * 0.35,
                    //right: MediaQuery.of(context).size.width * 0.32,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 5.0,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 60.0,
                      ),
                    ),
                  ),
                ],
                overflow: Overflow.visible,
              ),
              SizedBox(height: 150),
              element(
                elementText(
                    'Pursuing Bachelor of Technology from AKGEC  |  Java  |  C#  |  Flutter'),
              ),
              element(
                Row(
                  children: [
                    elementText('Attendance Percentage'),
                    Spacer(),
                    elementText('79%')
                  ],
                ),
              ),
              element(Column(
                children: [
                  Row(
                    children: [
                      elementText('Active Projects'),
                      Spacer(),
                      elementText('3')
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      elementText('Projects Completed'),
                      Spacer(),
                      elementText('5'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      elementText('For more information visit '),
                      GestureDetector(
                        onTap: () {
                          _urllaunch(
                              'https://github.com/aprajain?tab=repositories');
                        },
                        child: elementText('Github.'),
                      ),
                    ],
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
