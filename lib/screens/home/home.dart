import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/home/widgets/home_tab.dart';
import 'package:spotify_clone/screens/home/widgets/recently_played.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment(-0.8, -0.6), colors: [
          // Theme.of(context).primaryColor,
          Colors.white.withOpacity(0.3),
          const Color(0xFF111111)
        ])),

        // page body
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: ListView(children: <Widget>[
                // settings icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.settings), onPressed: () {}, color: Colors.white)
                  ],
                ),

                // recently played
                RecentlyPlayed(),

                HomeTab(tabTitle: "Made for you"),

                HomeTab(tabTitle: "Your heavy rotation")
              ]),
            )));
  }
}
