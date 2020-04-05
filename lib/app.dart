import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/home/home.dart';

import 'screens/home/home.dart';

class AppRoot extends StatefulWidget {
  @override
  _AppRootState createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  int _currentTabIndex = 0;
  final List<Widget> _children = [
    Home(),
    Center(
      child: Text('This is the search page'),
    ),
    Center(
      child: Text('This is the library page'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // Main body
          Expanded(
              child: Center(
            child: _children[_currentTabIndex],
          )),

          // Bottom bar
          AppBottom(_currentTabIndex, (int index) => setState(() => _currentTabIndex = index))
        ],
      ),
    );
  }
}

class AppBottom extends StatelessWidget {
  final int currentTabIndex;
  final void Function(int) onTap;

  AppBottom(this.currentTabIndex, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          // progress bar
          SizedBox(height: 2.0, child: LinearProgressIndicator(value: 0.4)),

          // now playing
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/player');
              },
              child: Container(
                padding: EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    border: Border(bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // favourite icon
                    IconButton(
                      onPressed: () => null,
                      icon: Icon(Icons.favorite),
                    ),

                    // song title and artist
                    Text('Exits . Foals'),

                    // play/pause Icon
                    IconButton(
                      onPressed: () => null,
                      icon: Icon(Icons.play_arrow),
                    ),
                  ],
                ),
              )),

          // bottom navigation
          BottomNavigationBar(
            onTap: onTap,
            currentIndex: this.currentTabIndex,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
              BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('Search')),
              BottomNavigationBarItem(icon: Icon(Icons.library_music), title: Text('Your Library')),
            ],
          ),
        ],
      ),
    );
  }
}
