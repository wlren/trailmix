import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../data/attraction_data.dart';
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

  final LatLng _center = const LatLng(45.0, 0);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _showCard() {
    overlayEntry = OverlayEntry(
      builder: (BuildContext context) {
        return Positioned(
          top: 0.0,
          left: 0.0,
          child: Card(
            child: Text("Hi"),
          ),
        );
      },
    );
    Overlay.of(context).insert(overlayEntry);
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
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
        markers: attractionData
            .map(
              (attraction) => Marker(
                markerId: MarkerId(attraction.titleID),
                icon: BitmapDescriptor.defaultMarker,
                position: attraction.location,
                infoWindow: InfoWindow(
                  title: attraction.titleID,
                  onTap: _showCard,
                ),
              ),
            )
            .toSet(),
      ),
    );
  }
}
