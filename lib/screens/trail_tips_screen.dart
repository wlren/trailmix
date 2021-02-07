import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../data/DND_data.dart';

class TrailTipsScreen extends StatelessWidget {
  static const routeName = '/trail_tips_screen';

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trail Tips"),
      ),
      drawer: AppDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(
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
              height: (height - AppBar().preferredSize.height) * 0.05,
              width: double.infinity,
            ),
          ),
          Container(
            height: (height - AppBar().preferredSize.height) * 0.35,
            child: ListView.builder(
              itemCount: DoList.length,
              itemBuilder: (context, index) {
                return Card(
                  //                           <-- Card widget
                  child: ExpansionTile(
                    leading: DoList[index].icons,
                    title: Text(DoList[index].title),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(DoList[index].description),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(
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
              height: (height - AppBar().preferredSize.height) * 0.05,
              width: double.infinity,
            ),
          ),
          Container(
            height: (height - AppBar().preferredSize.height) * 0.35,
            child: ListView.builder(
              itemCount: DoNotList.length,
              itemBuilder: (context, index) {
                return Card(
                  //                           <-- Card widget
                  child: ExpansionTile(
                    leading: DoNotList[index].icons,
                    title: Text(DoNotList[index].title),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(DoList[index].description),
                      ),
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
