import 'package:flutter/material.dart';

Widget customRow(IconData icon, title) {
  return Row(
    children: [
      Icon(icon),
      SizedBox(width: 6),
      Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    ],
  );
}

Widget divider() {
  return Divider(
    color: Colors.grey[400],
    height: 30,
  );
}

Widget info(value) {
  return Text(
    value,
    style: TextStyle(
      color: Colors.grey[800],
      fontSize: 20,
      fontWeight: FontWeight.w400,
    ),
  );
}
