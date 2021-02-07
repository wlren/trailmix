import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../data/attraction_data.dart';
import '../models/attraction.dart';
import '../widgets/attraction_item.dart';
import '../widgets/app_drawer.dart';
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

  void _displayInfo(AttractionItem attraction) {
    setState(() {
      _cardVisable = true;
      cardAttraction = attraction;
    });
  }

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))
        .buffer
        .asUint8List();
  }

  Future<Set<Marker>> getattractionData() async {
    List<Marker> markers = <Marker>[];
    for (final attraction in attractionData) {
      final Uint8List markerIcon =
          await getBytesFromAsset(attraction.markerPath, 100);
      final icon = BitmapDescriptor.fromBytes(markerIcon);
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
    final mark = await getattractionData();
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
                zoom: 17.5,
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
