import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import '../models/attraction.dart';

const attractionData = const [
  AttractionItem(
      description:
          "The Attap Chee Nipah palm produce sweet, jelly-like seeds which are common in Singapore desserts.\n" +
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
      description: "The giant mudskippers are the largest species of mudskippers.\n\n" +
          "While it may look peaceful, they are actually aggressive hunters, even eating crabs and prawns.\n\n" +
          "The male builds deep burrows in the mud as a nursery for its young, while the female lays eggs in the burrow which are fertilised by the male.\n\n" +
          "The male cares for the eggs by gulping air in his mouth and releasing it inside the burrow so that the eggs remain well oxygenated.",
      titleID: "Muddy Business",
      imagePath: 'assets/images/Mudskipper.jpg',
      location: LatLng(1.4474379694923059, 103.73024010139373),
      markerIcon: Icons.set_meal,
      iconColor: Colors.blue),
  AttractionItem(
      description: "Mangroves have important roles in the ecosystems. They trap mud and sand with their roots to prevent erosion. " +
          "They stabilise sediments and keep the water clear for seagrasses and coral reefs to develop nearby, and are a great help to other coastal ecosystems.\n\n" +
          "Different mangrove species are found in different zones.\n" +
          "The pointy things on the ground are the breathing roots of the mangrove trees. Be careful not to step on them!\n\n" +
          "Mangroves are hiding places for animals, both in the water and on land. Some animals, such as crabs, even use their complex root system as nurseries to raise their young.",
      titleID: "Know Your Roots",
      imagePath: 'assets/images/Mangrove_4.JPG',
      location: LatLng(1.447282, 103.729297),
      markerIcon: Icons.park,
      iconColor: Colors.brown),
  AttractionItem(
      description:
          "The Bakau is the most common mangrove in SBWR. Its main features are the arching stilt roots. The leaves of the mangroves have black dots on the underside, and they trap air in them. When heated, the air is transported to the stilt roots. The air released from the roots can even oxygenate the surrounding mud!\n\n" +
              "They are found closer to land. Meanwhile, other mangroves (such as the Sonneratia and Avicennia) are found closer to the sea.\n\n" +
              "Its timber can be split easily, making it good for firewood. It even burns better than coal, and was used to make charcoal. These mangrove trees have been also used for tannin leather by Arab traders.",
      titleID: "Bakau (Rhizophoraceae)",
      imagePath: 'assets/images/Rhizophora.jpeg',
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
          "The holes in the mud are all created by tiny mud crabs. Mangroves serve as a nursery for the mud crabs, and they will all grow up here before heading out.",
      titleID: "Crabby Patty",
      imagePath: 'assets/images/Mudcrab.jpeg',
      location: LatLng(1.447571, 103.729319),
      markerIcon: Icons.set_meal,
      iconColor: Colors.deepOrange),
  AttractionItem(
      description:
          "Common Redshank can be identified by its long bright orange-red legs and relatively long stout bill.  They come from Mongolia, Russian Far East and China, and they start arriving in Singapore as early as July.",
      titleID: "Common Redshank",
      imagePath: 'assets/images/Redshank.jpeg',
      location: LatLng(1.446689, 103.727076),
      markerIcon: Icons.flight_land,
      iconColor: Colors.lightBlueAccent),
  AttractionItem(
      description:
          "The reserve is a common pitstop for many migratory birds on their migratory journey on the East Asian–Australasian  Flyway\n\n" +
              "Spot the size, type of bills, and the legs of the birds to identify them.",
      titleID: "Main Bird Observational Hide 1A",
      imagePath: 'assets/images/Egret.jpeg',
      location: LatLng(1.4463, 103.7276),
      markerIcon: Icons.house_siding,
      iconColor: Colors.lightBlueAccent),
  AttractionItem(
      description:
          "Mongolian Plover is often sighted at Sungei Buloh between the months of September to December when it travels from places like Mongolia, the Himalayas and Tibet. Its appearance changes from sandy brown and the sides of the bird’s neck and broad breast-band turn a shade of rusty-red when it arrives in Singapore.",
      titleID: "Mongolian Plover",
      imagePath: 'assets/images/MongolianPlover.jpeg',
      location: LatLng(1.447068, 103.727466),
      markerIcon: Icons.flight_land,
      iconColor: Colors.lightBlueAccent),
  AttractionItem(
      description:
          "If you notice a bird ‘teetering’ or frequently bobbing its head and tail up and down, you have most likely spotted the Common Sandpiper. It has  a high-pitched three-note call as it flies off, often described as “twee-wee-wee”.",
      titleID: "Common Sandpiper",
      imagePath: 'assets/images/CommonSandpiper.jpeg',
      location: LatLng(1.447148, 103.727104),
      markerIcon: Icons.flight_land,
      iconColor: Colors.lightBlueAccent),
  AttractionItem(
      description:
          "A rare visitor, the Asian Dowitcher usually stops over for just one day. It is listed as Near Threatened on the International Union for Conservation of Nature (IUCN) red list of threatened species.",
      titleID: "Asian Dowitcher",
      imagePath: 'assets/images/AsianDowitcher.jpeg',
      location: LatLng(1.446882, 103.726716),
      markerIcon: Icons.flight_land,
      iconColor: Colors.lightBlueAccent),
  AttractionItem(
      description: "These birds can be seen flying over the mudflats during the migratory season." +
          "They are also known as waders, as they are often wading in water.\n\n" +
          "Their migratory journey begins during autumn, as food in their home in the north becomes scarce during winter. During spring, when food is plentiful, they travel back to the north to breed.\n\n" +
          "Shorebirds also give back to the shores, with their poop healing seagrass and helping them grow",
      titleID: "Shorebirds",
      imagePath: 'assets/images/Shorebirds.jpeg',
      location: LatLng(1.446858, 103.728406),
      markerIcon: Icons.flight_land,
      iconColor: Colors.lightBlueAccent),
];
