import 'package:flutter/material.dart';

class ExerciseInstructionScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DEEP I"),
      ),
      body:Column(
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
                      print('Card tapped.');
                    },
                    child: SizedBox(
                      width: (MediaQuery.of(context).size.width) - 10,
                      height: 180,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1.5,
                                ),
                              ),
                              child: Image.asset('assets/images/DEEP_I.gif'),
                            ),
                          ],
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
                      print('Card tapped.');
                    },
                    child: SizedBox(
                      width: (MediaQuery.of(context).size.width) - 10,
                      height: 120,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('assets/images/instructions.png', height: 100),
                          ],
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
                      print('Card tapped.');
                    },
                    child: SizedBox(
                      width: (MediaQuery.of(context).size.width) - 10,
                      height: 120,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                SizedBox(width: 360),
                                Text("Inspiração até a metade do volume de\nreserva inspiratório e expiração até o\nvolume corrente.", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ]
          ),
        ]
      )
    );
  }
}