import 'package:conatus_team/models/custombutton.dart';
import 'package:flutter/material.dart';

class ProfileContainer extends StatelessWidget {
  final String name;
  final String profiephoto;
  final String instaurl;
  final String mail;
  final String linkedin;
  final int phoneNo;
  final String skill;
  final String bio;

  ProfileContainer({
    @required this.name,
    @required this.profiephoto,
    @required this.instaurl,
    @required this.mail,
    @required this.linkedin,
    @required this.phoneNo,
    @required this.bio,
    @required this.skill,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        // boxShadow: [
        //   BoxShadow(
        //       color: Colors.grey[300],
        //       blurRadius: 30,
        //       offset: Offset(0, 10))
        // ],
      ),
      child: Container(
        padding: EdgeInsets.only(top: 10, bottom: 20),
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.blueGrey[200], width: 1),
          borderRadius: BorderRadius.circular(20),
        ),
        width: 160,
        child: Column(
          children: [
            circleAvatar(image: profiephoto, radius: 45),
            Spacer(),
            Text(
              name,
            ),
            Text(
              skill,
            ),
            Spacer(),
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 130,
                child: Text(
                  'View Profile',
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.blueGrey[800]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
