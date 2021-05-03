import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.none,
                    image: AssetImage('assets/images/logo.webp'))),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('DEEP LUNG CARE'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.assistant),
            title: Text('EXERCÍCIOS RESPIRATÓRIOS'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.assistant),
            title: Text('DEEP CARE'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.assistant),
            title: Text('AVALIE'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text('CONTATO'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}