import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../data/DND_data.dart';

class TrailTipsScreen extends StatelessWidget {
  static const routeName = '/trail_tips_screen';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trail Tips"),
      ),
      drawer: AppDrawer(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              "DO'S",
              textScaleFactor: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.green, spreadRadius: 2),
              ],
            ),
            height: 40,
            width: double.infinity,
          ),
          Container(
            height: 250,
            child: ListView.builder(
              itemCount: DoList.length,
              itemBuilder: (context, index) {
                return Card(
                  //                           <-- Card widget
                  child: ExpansionTile(
                    leading: DoList[index].icons,
                    title: Text(DoList[index].title),
                    children: [
                      Text(DoList[index].description),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              "DON'TS",
              textScaleFactor: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.red, spreadRadius: 2),
              ],
            ),
            height: 40,
            width: double.infinity,
          ),
          Container(
            height: 250,
            child: ListView.builder(
              itemCount: DoNotList.length,
              itemBuilder: (context, index) {
                return Card(
                  //                           <-- Card widget
                  child: ExpansionTile(
                    leading: DoNotList[index].icons,
                    title: Text(DoNotList[index].title),
                    children: [
                      Text(DoList[index].description),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
