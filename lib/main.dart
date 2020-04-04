import 'package:flutter/material.dart';
import 'app.dart';

class MainApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.green[600],
          accentColor: Colors.white,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent),

      //
      home: AppRoot(),
    );
  }
}

void main() => runApp(MainApp());
