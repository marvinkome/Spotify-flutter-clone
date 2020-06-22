import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment(-0.8, -0.6), colors: [
        // Theme.of(context).primaryColor,
        Colors.white.withOpacity(0.3),
        const Color(0xFF111111)
      ])),

      // page content
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 55),
          child: Column(
            children: <Widget>[
              Center(
                  child:
                      Text('Search', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900)))
            ],
          ),
        )),
      ),
    );
  }
}
