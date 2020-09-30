import 'package:conatus_team/models/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MeetNames extends StatelessWidget {
  List<String> names = ['Apra', 'Manish', 'Mohit', 'Chetu'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 80, 20, 10),
        width: double.infinity,
        color: Colors.green[200],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircularPercentIndicator(
                radius: 120.0,
                backgroundColor: Colors.red,
                lineWidth: 13.0,
                animation: true,
                percent: 0.7,
                center: Text(
                  "70%",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                footer: Text(
                  "Attendance",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                circularStrokeCap: CircularStrokeCap.square,
                progressColor: Colors.green[500],
              ),
            ),
            SizedBox(height: 10),
            header('Present'),
            for (int i = 0; i < names.length; i++) elementText(names[i]),
            header('Absent'),
            for (int i = 0; i < names.length; i++) elementText(names[i]),
          ],
        ),
      ),
    );
  }
}
