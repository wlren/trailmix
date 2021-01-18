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
  OverlayEntry overlayEntry;
  bool _cardVisable = false;
  Set<Marker> _markers;
  AttractionItem cardAttraction;
  LocationData currentLocation;
  Location location;

  void updatePinOnMap() async {
    // create a new CameraPosition instance
    // every time the location changes, so the camera
    // follows the pin as it moves with an animation
    setState(() {
      // updated position
      var pinPosition =
          LatLng(currentLocation.latitude, currentLocation.longitude);

      // the trick is to remove the marker (by id)
      // and add it again at the updated location
      _markers.removeWhere((m) => m.markerId.value == 'sourcePin');
      _markers.add(Marker(
          markerId: MarkerId('sourcePin'),
          position: pinPosition, // updated position
          icon:
              BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue)));
    });
  }

  void _onMapCreated() {
    var pinPosition;
    if (currentLocation != null) {
      pinPosition = LatLng(currentLocation.latitude, currentLocation.longitude);
    } else {
      pinPosition = LatLng(0, 0);
    }

    _markers.add(Marker(
        markerId: MarkerId('sourcePin'),
        position: pinPosition,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue)));
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

  void setInitialLocation() async {
    // set the initial location by pulling the user's
    // current location from the location's getLocation()
    currentLocation = await location.getLocation();
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
    location = new Location();
    location.onLocationChanged.listen((LocationData cLoc) {
      // cLoc contains the lat and long of the
      // current user's position in real time,
      // so we're holding on to it
      currentLocation = cLoc;
      updatePinOnMap();
    });

    setInitialLocation();
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
              onTap: (LatLng) => this.setState(() {
                _cardVisable = false;
              }),
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
                // my map has completed being created;
                // i'm ready to show the pins on the map
                _onMapCreated();
              },
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
