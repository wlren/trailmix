import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

import '../widgets/app_drawer.dart';

class WhatsNextScreen extends StatelessWidget {
  static const String routeName = "/whatsnext";

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("What's Next?"),
      ),
      drawer: AppDrawer(),
      body: Column(children: [
        Card(
          margin: const EdgeInsets.all(5),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Enjoyed yourself in Sungei Buloh? Here's more activities for you to try!",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    "assets/images/coasttocoast.png"))),
                      ),
                    ),
                    ExpansionTile(
                      title: Text("Coast to Coast Trail!"),
                      children: [
                        Text(
                            "visit the Coast-to-Coast Trail for a curated walking experience across the island!"),
                        InkWell(
                          child: new Text('See more on details Nparks Website'),
                          onTap: () {
                            _launchURL(
                                'https://www.nparks.gov.sg/gardens-parks-and-nature/parks-and-nature-reserves/coast-to-coast');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
