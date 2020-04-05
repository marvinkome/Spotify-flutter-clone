import 'package:flutter/material.dart';

class RecentlyPlayedCard extends StatelessWidget {
  final String imageLink;
  final String cardTitle;

  RecentlyPlayedCard({this.imageLink, this.cardTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
      child: Column(
        children: <Widget>[
          Image.asset(this.imageLink, width: 170, height: 170),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              this.cardTitle,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
          )
        ],
      ),
    );
  }
}

class RecentlyPlayed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
        // title
        Center(
            child: Text(
          'Recently played',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )),

        // list
        Container(
          height: 275.0,
          padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              RecentlyPlayedCard(imageLink: "assets/images/brazil.jpeg", cardTitle: "Brazil"),
              RecentlyPlayedCard(
                imageLink: "assets/images/tourist_history.jpeg",
                cardTitle: "Tourist History",
              ),
              RecentlyPlayedCard(
                imageLink: "assets/images/p1-enswbl.jpeg",
                cardTitle: "Part 1 Everything Not Saved Will Be Lost",
              ),
            ],
          ),
        )
      ]),
    );
  }
}
