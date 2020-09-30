import 'package:flutter/material.dart';

Widget element(Widget body) {
  return Container(
    alignment: Alignment.center,
    width: double.infinity,
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white.withOpacity(0.8),
    ),
    child: body,
  );
}

Widget elementText(value) {
  return Text(value,
      style: TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400));
}

Widget header(title) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 5),
    child: Text(title,
        style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: Colors.black,
            shadows: [Shadow(color: Colors.black)])),
  );
}
