import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:whatsapp_clone/model/contactModel.dart';

class SelectContacts extends StatefulWidget {
  @override
  _SelectContactsState createState() => _SelectContactsState();
}

class _SelectContactsState extends State<SelectContacts> {

  Iterable<Contact> contacts;

  Future getContacts() async {
    contacts = await ContactsService.getContacts();
    //String names = Contacts(name, avatar, phoneNumber).name;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Select contact",
          style: TextStyle(fontSize: 18.0),
        ),
        backgroundColor: Color(0xff075e54),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              //backgroundImage: MemoryImage(Contacts(av)),
            ),
            //title: Text(data),
          );
        },
      ),
    );
  }
}
