import 'package:flutter/material.dart';

class CallsScreen extends StatefulWidget {
  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_call),
        elevation: 6.0,
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, i) {
          return ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/716411/pexels-photo-716411.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            title: Text(
              "Harry",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
            subtitle: Row(
              children: <Widget>[
                Icon(
                  Icons.call_made,
                  size: 18.0,
                  color: Colors.green,
                ),
                Text("20 March,"),
                Text("12:33 pm"),
              ],
            ),
          );
        },
      ),
    );
  }
}
