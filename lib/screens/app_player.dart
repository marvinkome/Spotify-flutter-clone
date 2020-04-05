import 'dart:ui';

import 'package:flutter/material.dart';

class AppPlayer extends StatefulWidget {
  @override
  _AppPlayerState createState() => _AppPlayerState();
}

class _AppPlayerState extends State<AppPlayer> {
  double padding = 40.0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      // background
      Container(
        // styling
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage("assets/images/p1-enswbl.jpeg"), fit: BoxFit.cover),
        ),

        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black.withOpacity(0.75), Colors.black])),
          ),
        ),
      ),

      // app
      Container(
        child: Scaffold(
          // styling
          backgroundColor: Colors.transparent,

          // app bar
          appBar: AppBar(
            // app bar style
            backgroundColor: Colors.transparent,
            elevation: 0,

            // back button
            leading: IconButton(
                icon: Icon(Icons.keyboard_arrow_down),
                onPressed: () => Navigator.of(context).pop()),

            // title
            title: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Playing from album'.toUpperCase(),
                    style: TextStyle(fontSize: 11, color: Colors.white.withOpacity(0.72)),
                  ),
                  Text(
                    'Part 1 Everything Not Saved Will Be Lost',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),

            // action buttons
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              )
            ],
          ),

          // body
          body: Column(children: <Widget>[
            // cover art
            Container(
                padding: EdgeInsets.fromLTRB(padding, 60, padding, 60),
                child: Image.asset(
                  "assets/images/p1-enswbl.jpeg",
                  width: MediaQuery.of(context).size.width - padding * 2,
                  height: MediaQuery.of(context).size.width - padding * 2,
                )),

            // song details
            Container(
                padding: EdgeInsets.symmetric(horizontal: padding),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 7),
                          child: Text(
                            'Exits',
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          'Foals',
                          style: TextStyle(fontSize: 16, color: Colors.white.withOpacity(0.72)),
                        )
                      ],
                    ),

                    // like button
                    IconButton(icon: Icon(Icons.favorite_border), onPressed: () => null)
                  ],
                )),

            // seek slider
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(children: <Widget>[
                SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.white.withOpacity(0.5),
                      trackHeight: 3.0,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 7.0),
                      thumbColor: Colors.white,
                    ),
                    child: Slider(min: 0, max: 100, value: 80, onChanged: (value) {})),

                // duration
                Container(
                  padding: EdgeInsets.symmetric(horizontal: padding - 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '0:01',
                        style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.72)),
                      ),
                      Text(
                        '3:06',
                        style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.72)),
                      )
                    ],
                  ),
                )
              ]),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.shuffle),
                    onPressed: () {},
                    color: Theme.of(context).primaryColor,
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        iconSize: 40,
                        icon: Icon(Icons.skip_previous),
                        onPressed: () {},
                        color: Colors.white,
                      ),
                      Ink(
                        width: 65.0,
                        height: 65.0,
                        decoration: ShapeDecoration(shape: CircleBorder(), color: Colors.white),
                        child: IconButton(
                          icon: Icon(Icons.pause),
                          onPressed: () {},
                          color: Colors.black,
                          iconSize: 35,
                        ),
                      ),
                      IconButton(
                        iconSize: 40,
                        icon: Icon(Icons.skip_next),
                        onPressed: () {},
                        color: Colors.white,
                      )
                    ],
                  )),
                  IconButton(icon: Icon(Icons.repeat), onPressed: null)
                ],
              ),
            )
          ]),
        ),
      )
    ]);
  }
}
