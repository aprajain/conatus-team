import 'package:flutter/material.dart';

import 'data.dart';
import 'profileContainer.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                borderSide: BorderSide(color: Colors.black, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                borderSide: BorderSide(color: Colors.black, width: 2),
              ),
              labelText: 'Search',
            ),
          ),
        ),
        Container(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ProfileContainer(
                name: Dummy_profile[index].name,
                skill: Dummy_profile[index].skill,
                profiephoto: Dummy_profile[index].profiephoto,
                linkedin: Dummy_profile[index].linkedin,
                instaurl: Dummy_profile[index].instaurl,
                mail: Dummy_profile[index].mail,
                phoneNo: Dummy_profile[index].phoneNo,
                bio: Dummy_profile[index].bio,
              );
            },
            itemCount: Dummy_profile.length,
          ),

          //  ListView(
          //   scrollDirection: Axis.horizontal,
          //   children: [
          //     Container(
          //       margin: EdgeInsets.all(3),
          //       decoration: BoxDecoration(
          //         color: Colors.white,
          //         borderRadius: BorderRadius.circular(22),
          //         // boxShadow: [
          //         //   BoxShadow(
          //         //       color: Colors.grey[300],
          //         //       blurRadius: 30,
          //         //       offset: Offset(0, 10))
          //         // ],
          //       ),
          //       child: Container(
          //         padding: EdgeInsets.only(top: 10, bottom: 20),
          //         margin: EdgeInsets.all(2),
          //         decoration: BoxDecoration(
          //           color: Colors.white,
          //           border: Border.all(color: Colors.blueGrey[200], width: 1),
          //           borderRadius: BorderRadius.circular(20),
          //         ),
          //         width: 160,
          //         child: Column(
          //           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             circleAvatar(image: 'IMAGES/mypic.jpg', radius: 45),
          //             Spacer(),
          //             Text(
          //               'Mohit Kumar Singh',
          //             ),
          //             Text(
          //               'App Developer',
          //               // style: TextStyle(
          //               //     color: Colors.black,
          //               //     fontWeight: FontWeight.bold)
          //             ),
          //             Spacer(),
          //             GestureDetector(
          //               child: Container(
          //                 alignment: Alignment.center,
          //                 height: 30,
          //                 width: 130,
          //                 child: Text(
          //                   'View Profile',
          //                   style: TextStyle(color: Colors.white),
          //                 ),
          //                 decoration: BoxDecoration(
          //                     borderRadius: BorderRadius.circular(6),
          //                     color: Colors.blueGrey[800]),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //     Container(
          //       margin: EdgeInsets.all(3),
          //       decoration: BoxDecoration(
          //         color: Colors.white,
          //         borderRadius: BorderRadius.circular(22),
          //         // boxShadow: [
          //         //   BoxShadow(
          //         //       color: Colors.grey[300],
          //         //       blurRadius: 30,
          //         //       offset: Offset(0, 10))
          //         // ],
          //       ),
          //       child: Container(
          //         padding: EdgeInsets.only(top: 10, bottom: 20),
          //         margin: EdgeInsets.all(2),
          //         decoration: BoxDecoration(
          //           color: Colors.white,
          //           border: Border.all(color: Colors.blueGrey[200], width: 1),
          //           borderRadius: BorderRadius.circular(20),
          //         ),
          //         width: 160,
          //         child: Column(
          //           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             circleAvatar(image: 'IMAGES/apraJain.jpg', radius: 45),
          //             Spacer(),
          //             Text(
          //               'Apra Jain',
          //             ),
          //             Text(
          //               'App Developer',
          //               // style: TextStyle(
          //               //     color: Colors.black,
          //               //     fontWeight: FontWeight.bold)
          //             ),
          //             Spacer(),
          //             GestureDetector(
          //               child: Container(
          //                 alignment: Alignment.center,
          //                 height: 30,
          //                 width: 130,
          //                 child: Text(
          //                   'View Profile',
          //                   style: TextStyle(color: Colors.white),
          //                 ),
          //                 decoration: BoxDecoration(
          //                     borderRadius: BorderRadius.circular(6),
          //                     color: Colors.blueGrey[800]),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //     Container(
          //       margin: EdgeInsets.all(10),
          //       height: 350,
          //       width: 180,
          //       color: Colors.amber,
          //       child: Column(
          //         children: [
          //           Container(
          //             child: CircleAvatar(
          //               radius: 50,
          //               backgroundImage: AssetImage('IMAGES/mypic.jpg'),
          //             ),
          //           )
          //         ],
          //       ),
          //     )
          //   ],
          // ),
        )
      ]),
    );
  }
}
