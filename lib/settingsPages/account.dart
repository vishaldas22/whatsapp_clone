import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  String account;
  Account(this.account);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(account),
        backgroundColor: Color(0xff075e54),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.lock,color: Color(0xff128c7e),),
            title: Text("Privacy"),
          ),
          ListTile(
            leading: Icon(Icons.security,color: Color(0xff128c7e),),
            title: Text("Security"),
          ),
          ListTile(
            leading: Icon(Icons.more_horiz,color: Color(0xff128c7e),),
            title: Text("Two-step verification"),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app,color: Color(0xff128c7e),),
            title: Text("Change number"),
          ),
          ListTile(
            leading: Icon(Icons.note,color: Color(0xff128c7e),),
            title: Text("Request account info"),
          ),
          ListTile(
            leading: Icon(Icons.delete,color: Color(0xff128c7e),),
            title: Text("Delete my account"),
          )
        ],
      ),
    );
  }
}
