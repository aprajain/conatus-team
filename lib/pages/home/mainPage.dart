import 'package:conatus_team/models/eventpost.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // Widget headerTheme(Widget body) {
  //   return Container(
  //     alignment: Alignment.center,
  //     width: double.infinity,
  //     margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
  //     padding: EdgeInsets.symmetric(vertical: 20),
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(20),
  //       color: Colors.black45,
  //     ),
  //     child: body,
  //   );
  // }

  Widget popUp() {
    return Dialog(
      //clipBehavior: Clip.antiAlias,
      child: Container(
        padding: EdgeInsets.all(10),
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(0),
        // ),
        height: MediaQuery.of(context).size.height * 0.2,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Text(
            "September 27, 2020",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Present',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.green,
                ),
              ),
              Text(
                'Absent',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .9,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .09,
            margin: EdgeInsets.all(5),
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => popUp());
                  },
                  child: Container(
                      width: 150,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          //  boxShadow: shadowList,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text('ATTENDANCE')),
                ),
                Container(
                    width: 150,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        // boxShadow: shadowList,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text('QUERY')),
                Container(
                    width: 150,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        // boxShadow: shadowList,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text('PROJECT UPDATE')),
              ],
            ),
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Container(
            height: MediaQuery.of(context).size.height * .754,
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Eventpost(
                  title: 'R3CURSION',
                  image: 'images/R3.png',
                  ontap: () {},
                ),
                Eventpost(
                  image: 'images/quest.png',
                  title: 'QUEST\'20 ',
                  ontap: () {},
                ),
                Eventpost(
                  title: 'DAWN OF CRISIS',
                  image: 'images/doc.png',
                  ontap: () {},
                ),
                Eventpost(
                  image: 'images/cod.png',
                  title: 'COD',
                  ontap: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
