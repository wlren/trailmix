import 'dart:ui';

import 'package:flutter/material.dart';

import '../data/attraction_data.dart';
import '../screens/map_screen.dart';

class AttractionDetailScreen extends StatelessWidget {
  static const routeName = '/attraction_detail';

  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final titleID = ModalRoute.of(context).settings.arguments as String;
    final selectedAttraction = attractionData
        .firstWhere((attraction) => attraction.titleID == titleID);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          selectedAttraction.titleID,
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          ClipPath(
            clipper: ImageClipper(),
            child: Image.asset(
              selectedAttraction.imagePath,
              fit: BoxFit.cover,
              width: screenWidth,
              color: Color(0x99000000),
              colorBlendMode: BlendMode.lighten,
              height: screenHeight * 0.40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
              bottom: 8,
            ),
            child: Row(
              children: [
                Icon(Icons.arrow_right),
                Text(
                  'About',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(width: 2, color: Colors.green)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        selectedAttraction.description,
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    RaisedButton(
                      color: Colors.green,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed(
                            MapScreen.routeName,
                            arguments: selectedAttraction.location);
                      },
                      child: const Text(
                        'Go to map',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    Offset curveStartingPoint = Offset(0, 40);
    Offset curveEndPoint = Offset(size.width, size.height * 0.95);
    path.lineTo(curveStartingPoint.dx, curveStartingPoint.dy - 5);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.85,
        curveEndPoint.dx - 60, curveEndPoint.dy + 10);
    path.quadraticBezierTo(size.width * 0.99, size.height * 0.99,
        curveEndPoint.dx, curveEndPoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
