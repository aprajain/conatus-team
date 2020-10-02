import 'package:conatus_team/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'auth/authenticate.dart';
import 'models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    //return home or authenticate
    if (user == null) {
      return Authenticate();
    } else {
      return HomeScreen();
    }
  }
}
