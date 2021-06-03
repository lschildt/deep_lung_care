import 'dart:ffi';
import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class ExerciseInstructionScreen extends StatelessWidget {

  String title;
  String description;
  String imgAnimation;
  String imgInstructions;
  double descriptionFontSize;

  ExerciseInstructionScreen(String title, String description, String imgAnimation, String imgInstructions, double descriptionFontSize) {
    this.title = title;
    this.imgAnimation = imgAnimation;
    this.imgInstructions = imgInstructions;
    this.description = description;
    this.descriptionFontSize = descriptionFontSize;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                      child: Image.asset('assets/images/' + imgAnimation, width: (MediaQuery.of(context).size.width - 40)),
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

            Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                ),
                child: AutoSizeText(description, style: TextStyle(fontSize: descriptionFontSize, fontWeight: FontWeight.bold, color: Colors.black))
            )
          ]
        )
      )
    );
  }
}