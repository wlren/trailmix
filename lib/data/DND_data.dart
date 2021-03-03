import 'package:flutter/material.dart';
import '../models/dnd.dart';

const DoList = const [
  DND(
      title: "Stay on track!",
      description:
          ' If you are jogging, skating, cycling or using a personal mobility device, please stay on the designated tracks. Please keep left so as to not obstruct fellow park-goers.',
      icons: Icon(
        Icons.alt_route,
        color: Colors.green,
      )),
  DND(
      title: "Be responsible!",
      description: ' Show care and consideration when using park facilities :)',
      icons: Icon(
        Icons.favorite,
        color: Colors.green,
      )),
  DND(
      title: "Shhhhh!",
      description: ' Shhh, stay quiet and rare creatures may appear!',
      icons: Icon(
        Icons.volume_off,
        color: Colors.green,
      )),
  DND(
      title: "Secure your items!",
      description:
          ' Secure your items properly, so that they do not fall off and mischievous animals don’t snatch them.',
      icons: Icon(
        Icons.lock,
        color: Colors.green,
      )),
];

const DoNotList = const [
  DND(
    title: "Do not Smoke!",
    description:
        "Smoking is prohibited at covered spaces, shelters, toilets, playgrounds, fitness corners, carparks, as well as in areas where no-smoking signs have been installed, including the smoke-free parks and Nature Reserves. Let's keep our Nature Reserves, parks and gardens smoke-free for everyone to enjoy.",
    icons: Icon(
      Icons.smoke_free,
      color: Colors.red,
    ),
  ),
  DND(
    title: "Do not litter",
    description:
        "Do not litter! Don’t commit an environmental sin, and dispose of all waste in the designated bins!.",
    icons: Icon(
      Icons.delete_forever,
      color: Colors.red,
    ),
  ),
  DND(
    title: "Take nothing but photographs",
    description:
        "Do not remove any plants or animals from the reserve. Leave nothing but footprints, take nothing but pictures!",
    icons: Icon(
      Icons.camera,
      color: Colors.red,
    ),
  ),
  DND(
      title: "Don't feed!",
      description:
          ' Do not feed any wildlife you encounter, no matter how cute they are.',
      icons: Icon(
        Icons.no_food,
        color: Colors.red,
      )),
  DND(
    title: "Don't eat on trail!",
    description:
        "Do not eat when out on trails, especially if there are wildlife around. They might just steal your snacks.",
    icons: Icon(
      Icons.no_food_outlined,
      color: Colors.red,
    ),
  ),
];
