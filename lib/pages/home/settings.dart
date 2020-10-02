import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  Widget customRow(IconData icon, String text) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(6),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          customRow(Icons.lock_open, 'Security'),
          customRow(Icons.color_lens, 'Theme'),
          customRow(Icons.notifications_none, 'Notification'),
          customRow(Icons.info_outline, "About")
        ],
      ),
    );
  }
}
