import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class AttractionOverviewScreen extends StatelessWidget {
  static const routeName = '/attraction_overview_screen';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Attractions"),
      ),
      drawer: AppDrawer(),
    );
  }
}
