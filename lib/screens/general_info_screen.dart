import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class GeneralInfoScreen extends StatelessWidget {
  static const String routeName = "/generalInfo";
  @override
  Widget build(BuildContext context) {
    var statusBarHeight = MediaQuery.of(context).padding.top;
    double height = MediaQuery.of(context).size.height - statusBarHeight;
    return Scaffold(
      appBar: AppBar(
        title: const Text("General Information"),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.brown),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/SungeiBuloh.png"))),
              ),
            ),
            SizedBox(
              height:
                  (MediaQuery.of(context).size.height - statusBarHeight) * 0.02,
            ),
            Column(
              children: [
                Container(
                  height:
                      (MediaQuery.of(context).size.height - statusBarHeight) *
                          0.60,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(width: 2, color: Colors.green)),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.arrow_right),
                          title: const Text('Significance & attractions',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "\tSungei Buloh is recognised as a site of international importance for migratory birds, such as the pacific gold plover and the asian dowitcher. \n\n" +
                                "\tSungei Buloh also comprises of an extensive mangrove ecosystem and this is important because mangroves helps to stabilize shorelines, prevent erosion and protect our land (Kathiresan, 2012)\n\n" +
                                "\tThere are 3 main areas in Sungei Buloh Wetlands Reserve: \n\t\ta)Migratory Bird Trail\n\t\tb)Mangrove Boardwalk\n\t\tc)Coastal Trail",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height:
                      (MediaQuery.of(context).size.height - statusBarHeight) *
                          0.02,
                ),
                Container(
                  height:
                      (MediaQuery.of(context).size.height - statusBarHeight) *
                          0.50,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(width: 2, color: Colors.green)),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.arrow_right),
                          title: const Text('How to get there',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "By Public Transport:\nBus 925 from Kranji MRT Station, alight at Kranji Reservoir Pk B Bus Stop" +
                                "\n\nBy Public Transport (sunday):\n Bus 925M from Kranji MRT Station, alight at Sungei Buloh Wetland Reserve Bus Stop" +
                                "\n\nBy Car:\n Kranji Park Carpark B or C (Visitor Centre), Neo Tiew Cres Carpark (Wetland Centre)",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ],
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
