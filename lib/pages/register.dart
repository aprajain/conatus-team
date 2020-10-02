import 'package:conatus_team/main.dart';
import 'package:conatus_team/models/constants.dart';
import 'package:conatus_team/models/form_deco.dart';
import 'package:conatus_team/pages/profile/profile.dart';
import 'package:conatus_team/pages/profile/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String name;
  String bio, section;
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(
              Icons.check,
              size: 35,
            ),
            onPressed: () {
              _fbKey.currentState.save();
              if (_fbKey.currentState.validate()) {
                // print(_fbKey.currentState.value);
                Information.name = name;
                Information.branch = section;
                Information.tech = bio;
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => Home()));
              }
            },
          ),
          SizedBox(width: 5),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            FormBuilder(
                key: _fbKey,
                child: Column(
                  children: [
                    FormBuilderTextField(
                      onChanged: (val) {
                        setState(() {
                          name = val;
                        });
                      },
                      attribute: 'name',
                      initialValue: Information.name,
                      decoration: textDeco.copyWith(labelText: 'Name'),
                    ),
                    SizedBox(height: 20),
                    FormBuilderTextField(
                      onChanged: (val) {
                        setState(() {
                          section = val;
                        });
                      },
                      attribute: 'branch',
                      initialValue: Information.branch,
                      decoration: textDeco.copyWith(labelText: 'Branch, Year'),
                    ),
                    SizedBox(height: 20),
                    FormBuilderTextField(
                      onChanged: (val) {
                        setState(() {
                          bio = val;
                        });
                      },
                      attribute: 'domain',
                      initialValue: Information.tech,
                      decoration: textDeco.copyWith(labelText: 'Domain'),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
