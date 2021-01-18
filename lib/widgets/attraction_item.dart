import 'package:flutter/material.dart';

import '../screens/attraction_detail_screen.dart';

class AttractionItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;

  AttractionItem(
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
                  bottom: 20,
                  right: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.green[900],
                    ),
                    width: 220,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
