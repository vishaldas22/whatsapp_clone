import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants.dart';

class Notifications extends StatelessWidget {
  String notification;

  Notifications(this.notification);

  bool isSwitched = false;
  bool isSwitched1 = false;
  bool isSwitched2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e54),
        title: Text(notification),
        actions: <Widget>[
          PopupMenuButton<String>(itemBuilder: (BuildContext context) {
            return Consts.choice.map((String choice) {
              return PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
              );
            }).toList();
          })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5.0, top: 15.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text(
                "Conversation tones",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              subtitle: Text(
                "Play sounds for incoming and outgoing messages.",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
              ),
              trailing: Switch(
                  value: true,
                  activeColor: Color(0xff075e54),
                  onChanged: (changed) {
                    isSwitched = changed;
                  }),
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
                    "Messages",
                    style: TextStyle(
                        color: Color(0xff075e54), fontWeight: FontWeight.w500),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Notification tone",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    "Default(notice_audition.ogg)",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Vibrate",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    "Default",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Popup notification",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    "No popup",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Light",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    "White",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Use high priority notifications",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    "Show previews of notifications at the top of the screen",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
                  ),
                  trailing: Switch(
                      value: true,
                      activeColor: Color(0xff075e54),
                      onChanged: (changed) {
                        isSwitched1 = changed;
                      }),
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
                    "Groups",
                    style: TextStyle(
                        color: Color(0xff075e54), fontWeight: FontWeight.w500),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Notification tone",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    "Default(notice_audition.ogg)",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Vibrate",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    "Default",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Popup notification",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    "No popup",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Light",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    "White",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Use high priority notifications",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    "Show previews of notifications at the top of the screen",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
                  ),
                  trailing: Switch(
                      value: true,
                      activeColor: Color(0xff075e54),
                      onChanged: (changed) {
                        isSwitched2 = changed;
                      }),
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
                    "Calls",
                    style: TextStyle(
                        color: Color(0xff075e54), fontWeight: FontWeight.w500),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Ringtone",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    "Default(01. Perfect Time.mp3)",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Vibrate",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    "Default",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void Choices(String choice) {
    if (choice == "Reset notification settings") {
      print("Reset notification settings");
    }
  }
}
