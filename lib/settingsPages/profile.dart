import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  String profile;

  Profile(this.profile);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(profile),
        backgroundColor: Color(0xff075e54),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: <Widget>[
                  Hero(
                    tag: 'img',
                    child: CircleAvatar(
                      radius: 95.0,
                      backgroundImage: NetworkImage(
                          "https://scontent.fgau1-1.fna.fbcdn.net/v/t1.0-9/54520710_868924806780549_5715585440627556352_n.jpg?_nc_cat=104&_nc_ht=scontent.fgau1-1.fna&oh=c187b1a11a35a2be3ef0d5ee65ff9721&oe=5D3974CB"),
                    ),
                  ),
                  CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Color(0xff075e54),
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Color(0xff128c7e),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Name",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 15.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          "Bishal",
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 13.0,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.mode_edit,
                      color: Colors.grey,
                      size: 22.0,
                    )
                  ],
                ),
                subtitle: Text(
                  "This is not your username or pin. This name will be visible to your WhatsApp contacts.",
                  style: TextStyle(color: Colors.black54, fontSize: 13.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 73.0),
                child: Divider(),
              ),
              ListTile(
                leading: Icon(
                  Icons.info_outline,
                  color: Color(0xff128c7e),
                ),
                title: Text(
                  "About",
                  style: TextStyle(color: Colors.black54, fontSize: 15.0),
                ),
                subtitle: Text(
                  "Hey there! I am using WhatsApp.",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                trailing: Icon(
                  Icons.mode_edit,
                  color: Colors.grey,
                  size: 22.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 73.0),
                child: Divider(),
              ),
              ListTile(
                leading: Icon(
                  Icons.call,
                  color: Color(0xff128c7e),
                ),
                title: Text(
                  "Phone",
                  style: TextStyle(color: Colors.black54, fontSize: 15.0),
                ),
                subtitle: Text(
                  "+91 9678772644",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
