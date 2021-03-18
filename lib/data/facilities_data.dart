import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import '../models/attraction.dart';

const facilitiesData = const [
  AttractionItem(
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      titleID: "MB 1",
      imagePath: 'assets/images/monke.jpeg',
      location: LatLng(1.447502, 103.729588),
      markerIcon: Icons.house_siding),
  AttractionItem(
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      titleID: "MB 4",
      imagePath: 'assets/images/monke.jpeg',
      location: LatLng(1.447003, 103.730061),
      markerIcon: Icons.house_siding),
  AttractionItem(
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      titleID: "MB 3",
      imagePath: 'assets/images/monke.jpeg',
      location: LatLng(1.447366, 103.730379),
      markerIcon: Icons.house_siding),
  AttractionItem(
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      titleID: "MB 2",
      imagePath: 'assets/images/monke.jpeg',
      location: LatLng(1.447745, 103.729994),
      markerIcon: Icons.house_siding),
  AttractionItem(
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      titleID: "Broadwalk Entrance",
      imagePath: 'assets/images/monke.jpeg',
      location: LatLng(1.447113, 103.729005),
      markerIcon: Icons.trip_origin),
  AttractionItem(
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      titleID: "Entrance By Bus",
      imagePath: 'assets/images/monke.jpeg',
      location: LatLng(1.438790, 103.735371),
      markerIcon: Icons.directions_bus),
  AttractionItem(
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      titleID: "Wetland Reserve Centre",
      imagePath: 'assets/images/monke.jpeg',
      location: LatLng(1.4404140668514125, 103.73527939457156),
      markerIcon: Icons.festival),
];
