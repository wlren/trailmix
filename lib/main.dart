import 'package:flutter/material.dart';

import './screens/map_screen.dart';
import './screens/attraction_detail_screen.dart';
import './screens/attractions_overview_screen.dart';
import './screens/trail_tips_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trail Mix',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.green[50],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MapScreen(),
      routes: {
        AttractionDetailScreen.routeName: (ctx) => AttractionDetailScreen(),
        AttractionOverviewScreen.routeName: (ctx) => AttractionOverviewScreen(),
        TrailTipsScreen.routeName: (ctx) => TrailTipsScreen(),
      },
    );
  }
}
