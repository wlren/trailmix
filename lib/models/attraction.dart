import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AttractionItem {
  final String titleID;
  final String description;
  final String imageUrl;
  final LatLng location;
  final String type;

  const AttractionItem(
      {@required this.description,
      @required this.titleID,
      @required this.imageUrl,
      @required this.location,
      @required this.type});
}
