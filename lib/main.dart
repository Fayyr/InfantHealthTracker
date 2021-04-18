import 'package:google_fonts/google_fonts.dart';
import 'package:ihtprototype/screens/authenticate/sign_in.dart';
import 'package:ihtprototype/screens/home/home.dart';
import 'package:ihtprototype/screens/wrapper.dart';
import 'package:ihtprototype/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ihtprototype/models/user.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:ihtprototype/push_notifications.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final pushNotificationService = PushNotificationService(_firebaseMessaging);
    pushNotificationService.initialise();
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Raleway'),
        home: Wrapper(),
      ),
    );
  }
}
