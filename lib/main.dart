import 'package:ihtprototype/screens/authenticate/sign_in.dart';
import 'package:ihtprototype/screens/home/home.dart';
import 'package:ihtprototype/screens/wrapper.dart';
import 'package:ihtprototype/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ihtprototype/models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
