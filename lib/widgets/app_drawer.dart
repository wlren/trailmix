import 'package:flutter/material.dart';

import '../screens/map_screen.dart';
import '../screens/attraction_detail_screen.dart';
import '../screens/attractions_overview_screen.dart';
import '../screens/trail_tips_screen.dart';
import '../widgets/attraction_item.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: const Text("Trail Mix"),
            automaticallyImplyLeading: false,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.map,
            ),
            title: const Text('Map'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(MapScreen.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.emoji_nature_outlined),
            title: const Text('Attractions'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(AttractionOverviewScreen.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.contact_support),
            title: const Text('Trail Tips'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(TrailTipsScreen.routeName);
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
