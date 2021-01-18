import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class TrailTipsScreen extends StatelessWidget {
  static const routeName = '/trail_tips_screen';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trail Tips"),
      ),
      drawer: AppDrawer(),
    );
  }
}
