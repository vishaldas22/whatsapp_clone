import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  String chats;

  Chats(this.chats);

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e54),
        title: Text(chats),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 15.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Container(
                height: 0.0,
                width: 0.0,
              ),
              title: Text(
                "Enter is send",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              subtitle: Text(
                "Enter key will send your message",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.0),
              ),
              trailing: Switch(
                  value: false,
                  activeColor: Color(0xff075e54),
                  onChanged: (changed) {
                    isSwitched = changed;
                  }),
            ),
            SizedBox(
              height: 15.0,
            ),
            ListTile(
              leading: Container(
                height: 0.0,
                width: 0.0,
              ),
              title: Text(
                "Media visibility",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              subtitle: Text(
                "Show newly downloaded media in your phone's gallery",
                style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13.0,color: Colors.black54),
              ),
              trailing: Switch(
                  value: true,
                  activeColor: Color(0xff075e54),
                  onChanged: (changed) {
                    isSwitched = changed;
                  }),
            ),
            ListTile(
              leading: Container(
                height: 30.0,
                width: 30.0,
              ),
              title: Text(
                "Font size",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              subtitle: Text(
                "Medium",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              leading: Container(
                height: 0.0,
                width: 0.0,
              ),
              title: Text(
                "App Language",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              subtitle: Text(
                "Phone's language (English)",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.wallpaper,
                color: Color(0xff128c7e),
              ),
              title: Text(
                "Wallpaper",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.cloud_upload,
                color: Color(0xff128c7e),
              ),
              title: Text(
                "Chat backup",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.history,
                color: Color(0xff128c7e),
              ),
              title: Text(
                "Chat history",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
