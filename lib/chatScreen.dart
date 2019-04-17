import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/chatModel.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message),
        elevation: 6.0,
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context,i){
          return Column(
            children: <Widget>[
              ListTile(
                leading: new CircleAvatar(
                  radius: 25.0,
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: new NetworkImage(dummyData[i].avatarUrl),
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      dummyData[i].name,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                    new Text(
                      dummyData[i].time,
                      style: new TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                  ],
                ),
                subtitle: new Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: new Text(
                    dummyData[i].message,
                    style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:90.0,right: 10.0),
                child: Divider(),
              )
            ],
          );
        },
      ),
    );
  }
}
