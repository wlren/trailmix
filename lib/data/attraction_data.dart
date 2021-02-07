import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import '../models/attraction.dart';

const attractionData = const [
  AttractionItem(
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      titleID: "Attap Chee Nipah",
      imagePath: 'assets/images/monke.jpeg',
      location: LatLng(1.447731, 103.729761),
      markerIcon: Icons.park,
      iconColor: Colors.green),
  AttractionItem(
      description: "Crocodiles something Something",
      titleID: "Crocodiles",
      imagePath: 'assets/images/monke.jpeg',
      location: LatLng(1.4471631665181335, 103.72848762602433),
      markerIcon: Icons.anchor,
      iconColor: Colors.blue),
  AttractionItem(
      description: "Mudskippers, Mud Crabs",
      titleID: "Coastal Path",
      imagePath: 'assets/images/monke.jpeg',
      location: LatLng(1.4474379694923059, 103.73024010139373),
      markerIcon: Icons.set_meal_rounded,
      iconColor: Colors.blue),
  AttractionItem(
      description: "MOAR PLANTS",
      titleID: "Rhizophora",
      imagePath: 'assets/images/monke.jpeg',
      location: LatLng(1.4469290886454362, 103.72980797661354),
      markerIcon: Icons.spa,
      iconColor: Colors.green),
];
