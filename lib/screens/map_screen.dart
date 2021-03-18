import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../data/attraction_data.dart';
import '../data/facilities_data.dart';
import '../models/attraction.dart';
import '../widgets/attraction_item.dart';
import '../widgets/app_drawer.dart';
import '../helpers/marker_icon_generator.dart';
import '../data/polyline_coord.dart';

class MapScreen extends StatefulWidget {
  static const routeName = '/';
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Map<PolylineId, Polyline> polylines = {};

  void _createPolylines() {
    PolylineId id = PolylineId('poly');
    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.teal,
      points: polylineCoordinates,
      width: 3,
    );
    polylines[id] = polyline;

    PolylineId id2 = PolylineId('poly2');
    Polyline polyline2 = Polyline(
      polylineId: id2,
      color: Colors.teal,
      points: polylineCoordinates2,
      width: 3,
    );
    polylines[id2] = polyline2;

    PolylineId id3 = PolylineId('poly3');
    Polyline polyline3 = Polyline(
      polylineId: id3,
      color: Colors.teal,
      points: polylineCoordinates3,
      width: 3,
    );
    polylines[id3] = polyline3;

    PolylineId id4 = PolylineId('poly4');
    Polyline polyline4 = Polyline(
      polylineId: id4,
      color: Colors.teal,
      points: polylineCoordinates4,
      width: 3,
    );
    polylines[id4] = polyline4;
  }

  Completer<GoogleMapController> _controller = Completer();
  final LatLng _center = const LatLng(1.4466672, 103.7290178);
  OverlayEntry overlayEntry;
  bool _cardVisable = false;
  Set<Marker> _markers;
  AttractionItem cardAttraction;
  MarkerGenerator markerGenerator = new MarkerGenerator(80);

  void _displayInfo(AttractionItem attraction) {
    setState(() {
      _cardVisable = true;
      cardAttraction = attraction;
    });
  }

  Future<Set<Marker>> getAttractionData() async {
    List<Marker> markers = <Marker>[];
    for (final attraction in attractionData) {
      final icon = await markerGenerator.createBitmapDescriptorFromIconData(
          attraction.markerIcon,
          Colors.white,
          Colors.black,
          attraction.iconColor);
      final marker = Marker(
          markerId: MarkerId(attraction.titleID),
          icon: icon,
          position: attraction.location,
          onTap: () => _displayInfo(attraction));

      markers.add(marker);
    }
    for (final facilities in facilitiesData) {
      final icon = await markerGenerator.createBitmapDescriptorFromIconData(
          facilities.markerIcon, Colors.black, Colors.black, Colors.white);
      final marker = Marker(
          markerId: MarkerId(facilities.titleID),
          icon: icon,
          position: facilities.location,
          infoWindow: InfoWindow(title: facilities.titleID));
      markers.add(marker);
    }

    return markers.toSet();
  }

  void initData() async {
    final mark = await getAttractionData();
    _createPolylines();
    setState(() {
      _markers = mark;
    });
  }

  @override
  initState() {
    super.initState();
    initData();
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
              polylines: Set<Polyline>.of(polylines.values),
              mapType: MapType.satellite,
              myLocationEnabled: true,
              onTap: (_) => this.setState(() {
                _cardVisable = false;
              }),
              initialCameraPosition: CameraPosition(
                target: _selectedLocation == null ? _center : _selectedLocation,
                zoom: 17.7,
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
