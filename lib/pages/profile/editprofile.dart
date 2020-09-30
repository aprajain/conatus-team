import 'package:conatus_team/models/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Edit extends StatefulWidget {
  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
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
                print(_fbKey.currentState.value);
              }
            },
          ),
          SizedBox(width: 5),
        ],
      ),
      body: FormBuilder(
          key: _fbKey,
          child: Column(
            children: [
              FormBuilderTextField(
                attribute: 'name',
                initialValue: Information.name,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              FormBuilderTextField(
                attribute: 'branch',
                initialValue: Information.branch,
                decoration: InputDecoration(labelText: 'Branch, Year'),
              ),
              FormBuilderTextField(
                attribute: 'tech',
                initialValue: Information.tech,
                decoration: InputDecoration(labelText: 'Tech'),
              ),
            ],
          )),
    );
  }
}
