import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Positioned.fill(
            //     child: Column(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         color: Colors.blueGrey[300],
            //       ),
            //     ),
            //     Expanded(
            //       child: Container(
            //         color: Colors.white,
            //       ),
            //     )
            //   ],
            // )),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    IconButton(icon: Icon(Icons.share), onPressed: () {})
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.topCenter,
                child: Hero(tag: 1, child: Image.asset('')),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                width: 350,
                height: 100,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    // boxShadow: shadowList,
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 280,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[800],
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    'R3cursion',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      // fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 120,
                child: Row(
                  children: [
                    // Container(
                    //   height: 60,
                    //   width: 70,
                    //   decoration: BoxDecoration(
                    //       color: primaryGreen,
                    //       borderRadius: BorderRadius.circular(20)),
                    //   child: Icon(
                    //     Icons.favorite_border,
                    //     color: Colors.white,
                    //   ),
                    // ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[800],
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                          'Register',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        )),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
