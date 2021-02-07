import 'package:flutter/material.dart';

import '../screens/attraction_detail_screen.dart';

class AttractionWidget extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;

  AttractionWidget(
      {@required this.description,
      @required this.imagePath,
      @required this.title});

  void _selectAttraction(BuildContext context) {
    Navigator.of(context)
        .pushNamed(AttractionDetailScreen.routeName, arguments: this.title);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectAttraction(context),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 4,
          margin: const EdgeInsets.all(10),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imagePath,
                  height: MediaQuery.of(context).size.height * 0.18,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.18,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Stack(
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 26,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 6
                            ..color = Colors.black,
                        ),
                      ),
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
