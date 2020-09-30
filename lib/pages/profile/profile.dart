import 'package:conatus_team/models/constants.dart';
import 'package:conatus_team/models/theme.dart';
import 'package:conatus_team/pages/profile/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'customs.dart';
import 'editprofile.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  //String name = Information.name;

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text('aprajain'),
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
        //drawer: Menu(),
        //bottomNavigationBar: BottomBar(),
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: SingleChildScrollView(
            child: Column(children: [
              //Exp(),
              CircleAvatar(
                backgroundColor: Colors.cyan,
                radius: 60,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                Information.name = 'Apra Jain',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 5),
              info(Information.branch = '2nd Year IT'),
              SizedBox(height: 5),
              info(Information.tech = 'App Development'),
              SizedBox(height: 10),
              divider(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _urllaunch('mailto: apra.jain01@gmail.com');
                          },
                          child: customRow(Icons.mail, 'Email'),
                        ),
                        GestureDetector(
                            onTap: () {
                              _urllaunch('tel: +918604601091');
                            },
                            child: customRow(Icons.phone_android, 'Call')),
                        GestureDetector(
                          onTap: () {
                            _urllaunch('https://www.github.com/aprajain');
                          },
                          child: customRow(
                            FontAwesomeIcons.github,
                            'Github',
                          ),
                        ),
                      ],
                    ),
                    divider(),
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
            ]),
          ),
        ),
      ),
    );
  }
}
