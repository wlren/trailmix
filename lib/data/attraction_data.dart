import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import '../models/attraction.dart';

const attractionData = const [
  AttractionItem(
      description:
          "The Attap Chee Nippah palm produce sweet, jelly-like seeds which are common in Singapore desserts.\n" +
              "The leaves can be used for huts, umbrellas and even bags, while their sap can be fermented into an alcoholic drink.\n" +
              "Their sap is also known to be a favourite snack for civets.",
      titleID: "Edible Plants?!?!",
      imagePath: 'assets/images/AttapCheeNipah.jpg',
      location: LatLng(1.447731, 103.729761),
      markerIcon: Icons.park,
      iconColor: Colors.green),
  AttractionItem(
      description:
          "Crocodiles do not chew their food. Instead they use their powerful jaws to bite down on their pray and perform a spinning maneuver." +
              "known as the 'Death Roll' to tear off chunks of meat",
      titleID: "Croc 'n' Roll",
      imagePath: 'assets/images/BridgeCroc.JPG',
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
