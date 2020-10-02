import 'package:flutter/material.dart';

class Eventpost extends StatelessWidget {
  final String title;
  final String image;
  final Function ontap;

  Eventpost({
    @required this.title,
    @required this.image,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: 50,
          height: 160,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            // boxShadow: shadowList,
          ),
          margin: EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(20)
                    ),
                padding: EdgeInsets.all(10),
                child: Align(
                    // child: Hero(
                    //     tag: 1,
                    //     child: Image.asset(
                    //       image,
                    //       fit: BoxFit.fill,
                    //     )),
                    ),
              ),
              Text(title)
            ],
          ),
        ),
      ),
    );
  }
}
