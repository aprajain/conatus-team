import 'meetattend.dart';
import 'package:flutter/material.dart';

import 'attendance.dart';

class AttendancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF549499),
          bottom: TabBar(
            indicatorColor: Colors.grey,
            tabs: [
              Tab(
                  child: Text(
                "Attendance",
                style: TextStyle(color: Colors.black, fontSize: 20),
              )),
              Tab(
                  child: Text(
                "Meeting",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ))
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Attendance(),
            MeetingAttendance(),
          ],
        ),
      ),
    );
  }
}
