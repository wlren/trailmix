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

class AttractionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card();
  }
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController mapController;
  OverlayEntry overlayEntry;
  bool _cardVisable = false;
  AttractionItem cardAttraction;

  final LatLng _center = const LatLng(1.4466672, 103.7275178);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _displayInfo(AttractionItem attraction) {
    setState(() {
      _cardVisable = true;
      cardAttraction = attraction;
    });
  }

  static final CameraPosition _myLocation = CameraPosition(
    target: LatLng(0, 0),
  );
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
              onTap: (LatLng) => this.setState(() {
                _cardVisable = false;
              }),
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 16.2,
              ),
              markers: attractionData
                  .map(
                    (attraction) => Marker(
                      markerId: MarkerId(attraction.titleID),
                      icon: BitmapDescriptor.defaultMarker,
                      position: attraction.location,
                      onTap: () => _displayInfo(attraction),
                    ),
                  )
                  .toSet(),
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
