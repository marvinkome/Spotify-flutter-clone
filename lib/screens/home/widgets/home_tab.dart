import 'package:flutter/material.dart';

class HomeTabItem extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  HomeTabItem({this.image, this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
      child: Column(
        children: <Widget>[
          Image.asset(this.image, width: 220, height: 220),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  this.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),

                // sub title
                Text(
                  this.subTitle,
                  style: TextStyle(fontSize: 14, color: Colors.white60),
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  final String tabTitle;

  HomeTab({this.tabTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // title
          Text(
            this.tabTitle,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            softWrap: true,
          ),

          // list
          Container(
            height: 330.0,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                HomeTabItem(
                    image: "assets/images/daily_mix1.jpeg",
                    title: "Daily Mix 1",
                    subTitle: "SALES, The Growlers, Mac DeMarco and more"),
                HomeTabItem(
                    image: "assets/images/daily_mix2.jpeg",
                    title: "Daily Mix 2",
                    subTitle: "Strawberry Milk Cult, Lorde, AURORA and more"),
                HomeTabItem(
                    image: "assets/images/daily_mix3.jpeg",
                    title: "Daily Mix 3",
                    subTitle: "Foals, Djange Djange, Cage The Elephant and more"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
