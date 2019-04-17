import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CameraScreen.dart';
import 'package:whatsapp_clone/callsScreen.dart';
import 'package:whatsapp_clone/chatScreen.dart';
import 'package:whatsapp_clone/constants.dart';
import 'package:whatsapp_clone/settingsPages/settings.dart';
import 'package:whatsapp_clone/statusScreen.dart';
//import 'package:camera/camera.dart';
import 'package:bloc/bloc.dart';

//List<CameraDescription> cameras;

Future<Null> main() async {
  //cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  bool darkThemeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.darkThemeEnabled,
      initialData: false,
      builder: (context, snapshot) => MaterialApp(
            theme: snapshot.data ? ThemeData.dark() : ThemeData.light(),
            home: HomePage(snapshot.data),
          ),
    );
  }
}

class HomePage extends StatefulWidget {
//  var cameras;
  bool darkThemeEnabled;

  HomePage(this.darkThemeEnabled);

  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e54),
        elevation: 0.0,
        title: Text(
          'WhatsApp',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0),
        ),
        actions: <Widget>[
          Switch(value: widget.darkThemeEnabled, onChanged: bloc.changeTheme),
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          PopupMenuButton<String>(
            onSelected: Choices,
            itemBuilder: (BuildContext context) {
              return Constants.choices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ],
        bottom: TabBar(
          controller: controller,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 2.0,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text(
                'CHATS',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                'STATUS',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                'CALLS',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
      body: TabBarView(controller: controller, children: <Widget>[
        CameraScreen(),
        ChatScreen(),
        StatusScreen(),
        CallsScreen(),
      ]),
    );
  }

  void Choices(String choices) {
    if (choices == Constants.NewGroup) {
      print('new Group');
    } else if (choices == Constants.broadcast) {
      print('Broadcast');
    } else if (choices == Constants.web) {
      print('Whatsapp web');
    } else if (choices == Constants.starred) {
      print('Starred Messages');
    } else if (choices == Constants.settings) {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => Settings(Constants.settings)));
    } else {
      print('Nothing');
    }
  }
}

class Bloc {
  final _themeController = StreamController<bool>();

  get changeTheme => _themeController.sink.add;

  get darkThemeEnabled => _themeController.stream;
}

final bloc = Bloc();
