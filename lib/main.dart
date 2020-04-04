import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/app_player.dart';
import 'package:spotify_clone/widgets/slide_up_router.dart';
import 'app.dart';

class MainApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // app settings
      title: 'Spotify Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.green[600],
          accentColor: Colors.white,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent),

      // routes
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/player':
            return SlideUpRoute(widget: AppPlayer());
            break;
          default:
            return SlideUpRoute(widget: AppRoot());
            break;
        }
      },
    );
  }
}

void main() => runApp(MainApp());
