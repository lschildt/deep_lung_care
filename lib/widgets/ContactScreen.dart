import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contato"),
      ),
      body: Center(
        child: Column(
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Card(
                      elevation: 0,
                      shadowColor: Colors.black,
                      color: Colors.white,
                      child: InkWell(
                        splashColor: Colors.green.withAlpha(30),
                        onTap: () {
                          launchURL('whatsapp://send?phone=51981101823');
                        },
                        child: SizedBox(
                          width: (MediaQuery.of(context).size.width) - 10,
                          height: 60,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                            child: Center (
                                child : Text("WHATSAPP +55 51 98110-1823", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green))
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Card(
                      elevation: 0,
                      shadowColor: Colors.black,
                      color: Colors.white,
                      child: InkWell(
                        splashColor: Colors.green.withAlpha(30),
                        onTap: () {
                          launchURL('https://www.instagram.com/deeplungcare');
                        },
                        child: SizedBox(
                          width: (MediaQuery.of(context).size.width) - 10,
                          height: 60,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                            child: Center (
                                child : Text("@DEEPLUNGCARE", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green))
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Card(
                      elevation: 0,
                      shadowColor: Colors.black,
                      color: Colors.white,
                      child: InkWell(
                        splashColor: Colors.green.withAlpha(30),
                        onTap: () {
                          launchURL('https://www.instagram.com/marcellomees.fisio');
                        },
                        child: SizedBox(
                          width: (MediaQuery.of(context).size.width) - 10,
                          height: 60,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                            child: Center (
                                child : Text("@MARCELLOMEES.FISIO", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green))
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
            ]
        ),
      ),
    );
  }
}