import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

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
  Completer<GoogleMapController> _controller = Completer();
  final LatLng _center = const LatLng(1.4466672, 103.7275178);
  bool _cardVisable = false;
  Set<Marker> _markers;
  AttractionItem cardAttraction;

  void _displayInfo(AttractionItem attraction) {
    setState(() {
      _cardVisable = true;
      cardAttraction = attraction;
    });
  }

  @override
  void initState() {
    super.initState();
    _markers = attractionData
        .map((attraction) => Marker(
              markerId: MarkerId(attraction.titleID),
              icon: BitmapDescriptor.defaultMarker,
              position: attraction.location,
              onTap: () => _displayInfo(attraction),
            ))
        .toSet();
  }

  @override
  Widget build(BuildContext context) {
    final LatLng _selectedLocation = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sungei Buloh Map"),
        ),
        drawer: AppDrawer(),
        body: new Stack(
          children: [
            GoogleMap(
              mapType: MapType.hybrid,
              myLocationEnabled: true,
              onTap: (_) => this.setState(() {
                _cardVisable = false;
              }),
              initialCameraPosition: CameraPosition(
                target: _selectedLocation == null ? _center : _selectedLocation,
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
                  imagePath: cardAttraction.imagePath,
                  description: cardAttraction.description,
                ),
              ),
          ],
        ));
  }
}
