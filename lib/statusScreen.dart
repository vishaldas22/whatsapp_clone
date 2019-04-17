import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            mini: true,
            isExtended: true,
            onPressed: () {},
            child: Icon(
              Icons.mode_edit,
              size: 18.0,
              color: Color(0xff075e54),
            ),
            elevation: 8.0,
            backgroundColor: Colors.white,
          ),
          SizedBox(
            height: 10.0,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.photo_camera),
            elevation: 6.0,
            backgroundColor: Colors.green,
          )
        ],
      ),
      body: Container(
          child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 28.0,
                      backgroundImage: NetworkImage(
                          "https://scontent.fgau1-1.fna.fbcdn.net/v/t1.0-9/54520710_868924806780549_5715585440627556352_n.jpg?_nc_cat=104&_nc_ht=scontent.fgau1-1.fna&oh=c187b1a11a35a2be3ef0d5ee65ff9721&oe=5D3974CB"),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 10.0,
                      child: Icon(
                        Icons.add,
                        size: 18.0,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "My Status",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Tap to add status update",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15.0,
                        color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          Container(
            height: 40.0,
            color: Colors.black12,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 15.0),
              child: Text(
                "Recent updates",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                    color: Colors.black45),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13.0, right: 10.0, top: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                recentStatus("Harvey Spectre", "Just Now",
                    "https://images.pexels.com/photos/2120097/pexels-photo-2120097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                Padding(
                  padding: const EdgeInsets.only(left: 76.0, right: 6.0),
                  child: Divider(),
                ),
                recentStatus("Deepjyoti", "1 minute ago",
                    "https://images.pexels.com/photos/2067127/pexels-photo-2067127.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                Padding(
                  padding: const EdgeInsets.only(left: 76.0, right: 6.0),
                  child: Divider(),
                ),
                recentStatus("Sweety", "8 minutes ago",
                    "https://images.pexels.com/photos/2072453/pexels-photo-2072453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                Padding(
                  padding: const EdgeInsets.only(left: 76.0, right: 6.0),
                  child: Divider(),
                ),
                recentStatus("Abhijit", "30 minutes ago",
                    "https://images.pexels.com/photos/2116162/pexels-photo-2116162.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                Padding(
                  padding: const EdgeInsets.only(left: 76.0, right: 6.0),
                  child: Divider(),
                )
              ],
            ),
          ),
          Container(
            height: 40.0,
            color: Colors.black12,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 15.0),
              child: Text(
                "Viewed updates",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                    color: Colors.black45),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13.0, right: 10.0, top: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                viewedStatus("Harvey Spectre", "Just Now",
                    "https://images.pexels.com/photos/2090049/pexels-photo-2090049.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                Padding(
                  padding: const EdgeInsets.only(left: 76.0, right: 6.0),
                  child: Divider(),
                ),
                viewedStatus("Deepjyoti", "1 minute ago",
                    "https://images.pexels.com/photos/2094735/pexels-photo-2094735.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                Padding(
                  padding: const EdgeInsets.only(left: 76.0, right: 6.0),
                  child: Divider(),
                ),
                viewedStatus("Sweety", "8 minutes ago",
                    "https://images.pexels.com/photos/2100624/pexels-photo-2100624.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                Padding(
                  padding: const EdgeInsets.only(left: 76.0, right: 6.0),
                  child: Divider(),
                ),
                viewedStatus("Abhijit", "30 minutes ago",
                    "https://images.pexels.com/photos/2088366/pexels-photo-2088366.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                Padding(
                  padding: const EdgeInsets.only(left: 76.0, right: 6.0),
                  child: Divider(),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }

  Widget recentStatus(String name, String time, String imgUrl) {
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32.0),
              border: Border.all(width: 2.0, color: Colors.green[300])),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: CircleAvatar(
              radius: 28.0,
              backgroundImage: NetworkImage(imgUrl),
            ),
          ),
        ),
        SizedBox(
          width: 15.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              time,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0,
                  color: Colors.grey),
            )
          ],
        ),
      ],
    );
  }

  Widget viewedStatus(String name, String time, String imgUrl) {
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32.0),
              border: Border.all(width: 2.0, color: Colors.grey)),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: CircleAvatar(
              radius: 28.0,
              backgroundImage: NetworkImage(imgUrl),
            ),
          ),
        ),
        SizedBox(
          width: 15.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              time,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0,
                  color: Colors.grey),
            )
          ],
        ),
      ],
    );
  }
}
