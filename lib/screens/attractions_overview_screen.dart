import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../data/attraction_data.dart';
import '../widgets/attraction_item.dart';

class AttractionOverviewScreen extends StatelessWidget {
  static const routeName = '/attraction_overview_screen';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Attractions"),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: attractionData.length,
        itemBuilder: (ctx, index) => AttractionWidget(
            title: attractionData[index].titleID,
            imageUrl: attractionData[index].imageUrl,
            description: attractionData[index].description),
      ),
    );
  }
}
