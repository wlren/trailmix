import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class GeneralInfoScreen extends StatelessWidget {
  static const String routeName = "/generalInfo";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("General Information"),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text("test"),
      ),
    );
  }
}
