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
      markerIcon: Icons.spa,
      iconColor: Colors.green),
  AttractionItem(
      description: "The apex predator of the wetlands, crocodiles are commonly seen sunbathing on the river bank at low tide.\n\n" +
          "Crocodiles are the largest living reptiles and are also the largest predators too. While they are usually lazing about in the day, they will hunt for prey in the night\n\n" +
          "Many species of Egrets, Herons can be seen here as well as different fishes such as Archer Fish, Spotted Needlefish and Seabass can be seen\n\n" +
          " Did You Know ?\n\n Crocodiles do not chew their food. Instead they use their powerful jaws to bite down on their pray and perform a spinning maneuver." +
          "known as the 'Death Roll' to tear off chunks of meat.",
      titleID: "Main Bridge",
      imagePath: 'assets/images/BridgeCroc.JPG',
      location: LatLng(1.4471631665181335, 103.72848762602433),
      markerIcon: Icons.anchor,
      iconColor: Colors.blueGrey),
  AttractionItem(
      description:
          "Mudskippers and Mud Lobsters are known to be seen around here, can you spot these creatures\n\n" +
              "Did you know?\n\n Mud Lobsters dig up huge mud mounds (up to 2m) and many other animals use it for their homes too. Their digging also helps to keep the mangrove mud fresh, recycling nutrients and allowing oxygen to reenter the mud.",
      titleID: "Muddy Business",
      imagePath: 'assets/images/Mudskipper.jpg',
      location: LatLng(1.4474379694923059, 103.73024010139373),
      markerIcon: Icons.set_meal,
      iconColor: Colors.blue),
  AttractionItem(
      description:
          "Mangroves have important roles in the ecosystems. They trap mud and sand with their roots to prevent erosion.\n" +
              "Different mangrove species are found in different zones.\n" +
              "Sonneratia and Avicennia are closer to the sea, while Rhizophora is closer to land. Closer to the forest and boardwalk, a mix of all mangroves can be found.\n\n" +
              "Many fish and crabs use the complex root systems of mangroves as a nursery to house their young.",
      titleID: "Know Your Roots",
      imagePath: 'assets/images/Mangrove_4.JPG',
      location: LatLng(1.4469290886454362, 103.72980797661354),
      markerIcon: Icons.park,
      iconColor: Colors.brown),
  AttractionItem(
      description:
          "Come in and learn more about the Wetlands before going out to explore.\n\n" +
              "Look up! Big groups of flying foxes are commonly seen hanging from the roofs. They have an excellent sense of sight and smell to locate fruits.\n\n" +
              "Monitor lizards are a common sight in our ponds. Look out for their tongue. They have a keen sense of smell, using their tongue to “taste” the air While commonly seen on land or in water, did you know that they can climb trees too?",
      titleID: "Sungei Buloh Wetland Reserve Wetland Centre",
      imagePath: 'assets/images/WetlandCentre.jpeg',
      location: LatLng(1.4462584551145121, 103.72936764717024),
      markerIcon: Icons.festival,
      iconColor: Colors.amber),
  AttractionItem(
      description:
          "The reserve is a common pitstop for many migratory birds on their migratory journey on the East Asian–Australasian  Flyway\n\n" +
              "Spot the size, type of bills, and the legs of the birds to identify them.",
      titleID: "Migratory Birds",
      imagePath: 'assets/images/Egret.jpeg',
      location: LatLng(1.446663, 103.727368),
      markerIcon: Icons.flight_land,
      iconColor: Colors.lightBlueAccent),
  AttractionItem(
      description:
          "The holes in the mud are all created by tiny mud crabs. Mangroves serve as a nursery for the mud crabs, and they will all grow up here before heading out.",
      titleID: "Crabby Patty",
      imagePath: 'assets/images/Mudcrab.jpeg',
      location: LatLng(1.447571, 103.729319),
      markerIcon: Icons.set_meal,
      iconColor: Colors.deepOrange),
];
