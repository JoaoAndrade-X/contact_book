import 'package:contact_book/helpers/contact_helper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ContactHelper helper = ContactHelper();


  @override
  void initState() {
    super.initState();

    Contact c = Contact();
    c.name = "def";
    c.email = "def@def.com";
    c.phone = "87654321";
    c.img = "gmi";

    helper.saveContact(c);

    helper.getAllContacts().then((list) {
     print(list);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
