import 'package:flutter/material.dart';

class DataStorage extends StatelessWidget {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e54),
        title: Text("Data and storage usage"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 15.0),
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 5.0, bottom: 15.0),
                  child: Text(
                    "Usage",
                    style: TextStyle(
                        color: Color(0xff075e54), fontWeight: FontWeight.w500),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Network usage",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    "2.7 GB sent . 6.0 GB received",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Storage usage",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    "920.9 MB",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7.0,
            ),
            Divider(),
            SizedBox(
              height: 7.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 5.0, bottom: 15.0),
                  child: Text(
                    "Media auto-download",
                    style: TextStyle(
                        color: Color(0xff075e54), fontWeight: FontWeight.w500),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Voice messages are always auto-downloaded for the best communication experience",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
                  ),
                ),
                ListTile(
                  title: Text(
                    "When using mobile data",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    "Photos",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
                  ),
                ),
                ListTile(
                  title: Text(
                    "When connected on Wi-Fi",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    "All media",
                    style:
                    TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
                  ),
                ),
                ListTile(
                  title: Text(
                    "When roaming",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    "No media",
                    style:
                    TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Divider(),
                SizedBox(
                  height: 7.0,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                  const EdgeInsets.only(left: 15.0, top: 5.0, bottom: 15.0),
                  child: Text(
                    "Call Settings",
                    style: TextStyle(
                        color: Color(0xff075e54), fontWeight: FontWeight.w500),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Low data usage",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    "Reduce the data used in a call",
                    style:
                    TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
                  ),
                  trailing: Switch(
                      value: true,
                      activeColor: Color(0xff075e54),
                      onChanged: (changed) {
                        isSwitched = changed;
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
