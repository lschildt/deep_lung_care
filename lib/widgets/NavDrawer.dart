import 'package:flutter/material.dart';

import 'ContactScreen.dart';
import 'DeepCareScreen.dart';
import 'ExercisesScreen.dart';
import 'package:url_launcher/url_launcher.dart';

class NavDrawer extends StatelessWidget {


  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
            leading: Icon(Icons.assistant),
            title: Text('EXERCÍCIOS RESPIRATÓRIOS'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExercisesScreen()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.assistant),
            title: Text('DEEP CARE'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DeepCareScreen()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.assistant),
            title: Text('AVALIE'),
            onTap: () => {
              Navigator.of(context).pop(),
              launchURL('https://www.deeplungcare.com/avalie')
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text('CONTATO'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactScreen()),
              )
            },
          ),
        ],
      ),
    );
  }
}