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
      description:
          "Did you know? Mud Lobsters dig up huge mud mounds (up to 2m) and many other animals use it for their homes too. Their digging also helps to keep the mangrove mud fresh, recycling nutrients and allowing oxygen to reenter the mud.",
      titleID: "Muddy Business",
      imagePath: 'assets/images/Mudskipper.jpg',
      location: LatLng(1.4474379694923059, 103.73024010139373),
      markerIcon: Icons.set_meal_rounded,
      iconColor: Colors.blue),
  AttractionItem(
      description: "...",
      titleID: "Know Your Roots",
      imagePath: 'assets/images/Mangrove_4.JPG',
      location: LatLng(1.4469290886454362, 103.72980797661354),
      markerIcon: Icons.spa,
      iconColor: Colors.green),
  AttractionItem(
      description:
          "Come in and learn more about the Wetlands before going out to explore.\n\n" +
              "Look up! Big groups of flying foxes are commonly seen hanging from the roofs. They have an excellent sense of sight and smell to locate fruits.\n\n" +
              "Monitor lizards are a common sight in our ponds. Look out for their tongue. They have a keen sense of smell, using their tongue to “taste” the air While commonly seen on land or in water, did you know that they can climb trees too?",
      titleID: "Sungei Buloh Wetland Reserve Wetland Centre",
      imagePath: 'assets/images/WetlandCentre.jpeg',
      location: LatLng(1.4462584551145121, 103.72936764717024),
      markerIcon: Icons.festival,
      iconColor: Colors.black),
];
