import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../data/attraction_data.dart';
import '../models/attraction.dart';
import '../widgets/attraction_item.dart';
import '../widgets/app_drawer.dart';

class MapScreen extends StatefulWidget {
  static const routeName = '/';
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final LatLng _center = const LatLng(1.4466672, 103.7275178);
  bool _cardVisable = false;
  Set<Marker> _markers;
  AttractionItem cardAttraction;

  // Set<BitmapDescriptor> _icons;

  void _displayInfo(AttractionItem attraction) {
    setState(() {
      _cardVisable = true;
      cardAttraction = attraction;
    });
  }

  Future<Set<Marker>> getattractionData() async {
    List<Marker> markers = <Marker>[];
    for (final attraction in attractionData) {
      final icon = await BitmapDescriptor.fromAssetImage(
          ImageConfiguration(size: Size(12, 12)), 'asset/hut.png');
      final marker = Marker(
          markerId: MarkerId(attraction.titleID),
          icon: icon,
          position: attraction.location,
          onTap: () => _displayInfo(attraction));

      markers.add(marker);
    }
    return markers.toSet();
  }

  void initData() async {
    // final mark = await getattractionData();
    final icon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(size: Size(12, 12)), 'asset/hut.png');
    setState(() {
      // _markers = mark;
    });
  }

  @override
  initState() {
    super.initState();
    initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sungei Buloh Map"),
        ),
        drawer: AppDrawer(),
        body: new Stack(
          children: [
            GoogleMap(
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              onTap: (_) => this.setState(() {
                _cardVisable = false;
              }),
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 16.2,
              ),
              markers: _markers,
            ),
            if (_cardVisable)
              Padding(
                padding: EdgeInsets.fromLTRB(
                    0, MediaQuery.of(context).size.height - 300, 0, 0),
                child: new AttractionWidget(
                  title: cardAttraction.titleID,
                  imageUrl: cardAttraction.imageUrl,
                  description: cardAttraction.description,
                ),
              ),
          ],
        ));
  }
}
