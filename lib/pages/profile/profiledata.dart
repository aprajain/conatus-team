import 'package:flutter/material.dart';

class PersonalInfo extends StatefulWidget {
  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            indicatorColor: Colors.grey,
            tabs: [
              Tab(
                  child: Text(
                "Skills",
                style: TextStyle(color: Colors.black, fontSize: 20),
              )),
              Tab(
                  child: Text(
                "Education",
                style: TextStyle(color: Colors.black, fontSize: 20),
              )),
              Tab(
                  child: Text(
                "Projects",
                style: TextStyle(color: Colors.black, fontSize: 20),
              )),
            ],
          ),
        ),
        body: TabBarView(
          children: [],
        ),
      ),
    );
  }
}
