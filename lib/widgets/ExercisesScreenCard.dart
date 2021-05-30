import 'package:deep_lung_care/widgets/ExerciseInstructionScreen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExercisesScreenCard extends Card {

  String title;
  double textSize;
  ExerciseInstructionScreen exerciseInstructionScreen;

  ExercisesScreenCard(String title, double textSize, ExerciseInstructionScreen exerciseInstructionScreen) {
    this.title = title;
    this.textSize = textSize;
    this.exerciseInstructionScreen = exerciseInstructionScreen;
  }

  @override
  Widget build(BuildContext context) {
    return Card (
      elevation: 5,
      shadowColor: Colors.green,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: BorderSide(
          color: Colors.black,
          width: 0.1,
        ),
      ),
      child: InkWell(
        splashColor: Colors.green.withAlpha(30),
        onTap:  () => {
          //Navigator.of(context).pop(),
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => exerciseInstructionScreen),
          )
        },
        child: SizedBox(
          width: (MediaQuery.of(context).size.width - 40) / 3,
          height: 100,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: textSize, fontWeight: FontWeight.bold, color: Colors.green)
              ),
            ),
          ),
        ),
      ),
    );
  }
}