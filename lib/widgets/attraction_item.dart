import 'package:flutter/material.dart';

import '../screens/attraction_detail_screen.dart';

class AttractionWidget extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;

  AttractionWidget(
      {@required this.description,
      @required this.imageUrl,
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
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    imageUrl,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                      width: 220,
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 20,
                      ),
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
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
