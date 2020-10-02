import 'package:flutter/material.dart';

class BioPage {
  final String name;
  final String profiephoto;
  final String instaurl;
  final String mail;
  final String linkedin;
  final int phoneNo;
  final String skill;
  final String bio;

  const BioPage({
    @required this.name,
    @required this.profiephoto,
    @required this.instaurl,
    @required this.mail,
    @required this.linkedin,
    @required this.phoneNo,
    @required this.bio,
    @required this.skill,
  });
}

const Dummy_profile = const [
  BioPage(
      name: 'Apra Jain',
      profiephoto: 'images/apraJain.jpg',
      instaurl: "https://instagram.com/apra_jain_?igshid=9vh7c6at1csh",
      mail: 'apra1913119@akgec.ac.in',
      linkedin: 'null',
      phoneNo: 8604601091,
      bio: 'bio',
      skill: 'App developer'),
  BioPage(
      name: 'Chaitanya Singh',
      profiephoto: 'images/chetu.png',
      instaurl: 'https://instagram.com/chaitanyaa2?igshid=xh1dkl0es0mj',
      mail: 'chaitanya1913092@akgec.ac.in',
      linkedin: 'https://www.linkedin.com/in/chaitanya-singh-0b96691b4',
      phoneNo: 7060633533,
      bio: 'bio',
      skill: 'Machine Learning'),
  BioPage(
      name: 'Manish Kumar',
      profiephoto: 'images/manish.png',
      instaurl: 'https://instagram.com/mannnish_?igshid=rkix9152lxkf',
      mail: 'manish1913165@akgec.ac.in',
      linkedin: 'https://www.linkedin.com/in/manish-kumar-21a8b4183/',
      phoneNo: 9958774243,
      bio: 'bio',
      skill: 'App developer'),
  BioPage(
      name: 'Chirag Agrawaal ',
      profiephoto: 'images/chirag.jpg',
      instaurl:
          'https://www.instagram.com/invites/contact/?i=rrqg2zsznuix&utm_content=284j26e',
      mail: 'agarwalchirag112@gmail.com',
      linkedin: 'https://www.linkedin.com/in/chirag-agrawal-32b5a31a3',
      phoneNo: 6398356528,
      bio: 'bio',
      skill: 'Web developer'),
  BioPage(
      name: 'Mohit Kumar Singh',
      profiephoto: 'images/mypic.jpg',
      instaurl: 'https://instagram.com/mohit_kumar_singh?igshid=a7p8i0f07u98',
      mail: 'mks61201625@gmailcom',
      linkedin: 'https://www.linkedin.com/in/mohit-kumar-singh-mks',
      phoneNo: 6398356528,
      bio:
          'Responsible and ambitious student with excellent time management. Aiming to use knowledge and resources to combine technology with creativity / art . Possess proper communication skills and strong work ethics that will aid our team in meeting its future  milestones.',
      skill: 'App developer'),
  BioPage(
      name: 'Avni Mittal',
      profiephoto: 'images/A.png',
      instaurl: "null",
      mail: 'null',
      linkedin: 'null',
      phoneNo: 1,
      bio: 'bio',
      skill: 'App developer'),
  BioPage(
      name: 'Rishabh Singh',
      profiephoto: 'images/rishabh.png',
      instaurl: "null",
      mail: 'null',
      linkedin: 'null',
      phoneNo: 1,
      bio: 'bio',
      skill: 'Machine Leraning'),
];
