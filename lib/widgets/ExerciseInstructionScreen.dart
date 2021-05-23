import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExerciseInstructionScreen extends StatelessWidget {

  String title;
  String description;
  String imgAnimation;
  String imgInstructions;

  ExerciseInstructionScreen(String title, String description, String imgAnimation, String imgInstructions) {
    this.title = title;
    this.imgAnimation = imgAnimation;
    this.imgInstructions = imgInstructions;
    this.description = description;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body:Column(
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.white,
                    ),
                    child: Image.asset('assets/images/' + imgAnimation, height: 200),
                )
              ]
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(3.0),
                    child: Image.asset('assets/images/' + imgInstructions, height: 140)
                )
              ]
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.white,
                    ),
                    child: Text(description
                        , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black))
                )
              ]
          ),
        ]
      )
    );
  }
}