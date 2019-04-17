import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants.dart';
import 'package:whatsapp_clone/settingsPages/account.dart';
import 'package:whatsapp_clone/settingsPages/chats.dart';
import 'package:whatsapp_clone/settingsPages/dataStorage.dart';
import 'package:whatsapp_clone/settingsPages/help.dart';
import 'package:whatsapp_clone/settingsPages/notifications.dart';
import 'package:whatsapp_clone/settingsPages/profile.dart';

class Settings extends StatefulWidget {
  String settings;

  Settings(this.settings);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e54),
        title: Text(widget.settings),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  child: Hero(
                    tag: "img",
                    child: CircleAvatar(
                      radius: 27.0,
                      backgroundImage: NetworkImage(
                          "https://scontent.fgau1-1.fna.fbcdn.net/v/t1.0-9/54520710_868924806780549_5715585440627556352_n.jpg?_nc_cat=104&_nc_ht=scontent.fgau1-1.fna&oh=c187b1a11a35a2be3ef0d5ee65ff9721&oe=5D3974CB"),
                    ),
                  ),
                  onTap: () =>
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Profile("Profile"))),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Bishal Das",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text('Hey there! I am using WhatsApp'),
                  ],
                )
              ],
            ),
          ),
          Divider(),
          GestureDetector(
            onTap: () =>
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) =>
                        Account("Account"))),
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Color(0xff128c7e),
              ),
              title: Text(
                "Account",
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
              subtitle: Text('Privacy, security, change number'),
            ),
          ),
          GestureDetector(
            onTap: () =>
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) =>
                        Chats("Chats"))),
            child: ListTile(
              leading: Icon(
                Icons.chat,
                color: Color(0xff128c7e),
              ),
              title: Text(
                "Chats",
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
              subtitle: Text('Backup, history, wallpaper'),
            ),
          ),
          GestureDetector(
            onTap: () =>
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) =>
                        Notifications("Notifications"))),
            child: ListTile(
              leading: Icon(
                Icons.notifications,
                color: Color(0xff128c7e),
              ),
              title: Text(
                "Notifications",
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
              subtitle: Text('Message,group & call tones'),
            ),
          ),
          GestureDetector(
            onTap: () =>
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) =>
                        DataStorage())),
            child: ListTile(
              leading: Icon(
                Icons.check_circle,
                color: Color(0xff128c7e),
              ),
              title: Text(
                "Data and storage usage",
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
              subtitle: Text('Network usage, auto-download'),
            ),
          ),
          GestureDetector(
            onTap: () =>
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) =>
                        Help("Help"))),
            child: ListTile(
              leading: Icon(
                Icons.help_outline,
                color: Color(0xff128c7e),
              ),
              title: Text(
                "Help",
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
              subtitle: Text('FAQ, contact us, privacy policy'),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.supervisor_account,
              color: Color(0xff128c7e),
            ),
            title: Text(
              "Invite a friend",
              style: TextStyle(
                fontSize: 17.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
