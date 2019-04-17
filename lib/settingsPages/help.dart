import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  String help;
  Help(this.help);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(help),
        backgroundColor: Color(0xff075e54),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.help_outline,color: Color(0xff128c7e),),
            title: Text("FAQ"),
          ),
          ListTile(
            leading: Icon(Icons.supervisor_account,color: Color(0xff128c7e),),
            title: Text("Contact us"),
            subtitle: Text("Questions? Need help?"),
          ),
          ListTile(
            leading: Icon(Icons.note,color: Color(0xff128c7e),),
            title: Text("Terms and Privacy Policy"),
          ),
          ListTile(
            leading: Icon(Icons.info_outline,color: Color(0xff128c7e),),
            title: Text("App  info"),
          ),
        ],
      ),
    );
  }
}
