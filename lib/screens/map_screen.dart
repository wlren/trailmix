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
import '../helpers/marker_icon_generator.dart';

class MapScreen extends StatefulWidget {
  static const routeName = '/';
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
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

  Future<Set<Marker>> getattractionData() async {
    List<Marker> markers = <Marker>[];
    for (final attraction in attractionData) {
      // final Uint8List markerIcon =
      //     await getBytesFromAsset(attraction.markerPath, 80);
      // final icon = BitmapDescriptor.fromBytes(markerIcon);
      final icon = await markerGenerator.createBitmapDescriptorFromIconData(
          attraction.markerIcon, Colors.black, Colors.black, Colors.white);
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
              mapType: MapType.hybrid,
              myLocationEnabled: true,
              onTap: (_) => this.setState(() {
                _cardVisable = false;
              }),
              initialCameraPosition: CameraPosition(
                target: _center,
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
