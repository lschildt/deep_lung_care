import 'package:deep_lung_care/widgets/ExerciseInstructionScreen.dart';
import 'package:flutter/material.dart';

import 'ExercisesScreenCard.dart';

class ExercisesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EXERCÍCIOS RESPIRATÓRIOS"),
      ),
      body: Column(
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  elevation: 0,
                  shadowColor: Colors.black,
                  color: Colors.white,
                  child: SizedBox(
                    width: (MediaQuery.of(context).size.width) - 10,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              SizedBox(width: 360),
                              Text("INSUFLANTES", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]
          ),
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ExercisesScreenCard(
                          'DEEP I',
                          16,
                          ExerciseInstructionScreen(
                              'DEEP I',
                              'Inspiração até a metade do volume de\nreserva inspiratório e expiração até o\nvolume corrente.',
                              'DEEP_I.gif',
                              'instructions.png')),
                      ExercisesScreenCard(
                          'DIAFRAGMÁTICO',
                          11,
                          ExerciseInstructionScreen(
                          'DEEP I',
                          'Inspiração até a metade do volume de\nreserva inspiratório e expiração até o\nvolume corrente.',
                          'DEEP_I.gif',
                          'instructions.png')),
                      ExercisesScreenCard(
                          'SOLUÇO INSP.',
                          14,
                          ExerciseInstructionScreen(
                          'DEEP I',
                          'Inspiração até a metade do volume de\nreserva inspiratório e expiração até o\nvolume corrente.',
                          'DEEP_I.gif',
                          'instructions.png')),
                    ]
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ExercisesScreenCard('DEEP II',
                          16,
                          ExerciseInstructionScreen(
                              'DEEP I',
                              'Inspiração até a metade do volume de\nreserva inspiratório e expiração até o\nvolume corrente.',
                              'DEEP_I.gif',
                              'instructions.png')),
                      ExercisesScreenCard('INSP. FRACIONADA',
                          14,
                          ExerciseInstructionScreen(
                              'DEEP I',
                              'Inspiração até a metade do volume de\nreserva inspiratório e expiração até o\nvolume corrente.',
                              'DEEP_I.gif',
                              'instructions.png')),
                    ]
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ExercisesScreenCard('LA PENA',
                          16,
                          ExerciseInstructionScreen(
                              'DEEP I',
                              'Inspiração até a metade do volume de\nreserva inspiratório e expiração até o\nvolume corrente.',
                              'DEEP_I.gif',
                              'instructions.png')
                      ),
                      ExercisesScreenCard('EXP. ABREVIADA',
                          14,
                          ExerciseInstructionScreen(
                              'DEEP I',
                              'Inspiração até a metade do volume de\nreserva inspiratório e expiração até o\nvolume corrente.',
                              'DEEP_I.gif',
                              'instructions.png')),
                    ]
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
                  child: SizedBox(
                    width: (MediaQuery.of(context).size.width) - 10,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              SizedBox(width: 360),
                              Text("DESINSUFLANTES", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]
          ),
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ExercisesScreenCard('INSP. ABREVIADA',
                    14,
                    ExerciseInstructionScreen(
                        'DEEP I',
                        'Inspiração até a metade do volume de\nreserva inspiratório e expiração até o\nvolume corrente.',
                        'DEEP_I.gif',
                        'instructions.png')),
                SizedBox(
                    width: 140,
                    height: 100,
                ),
                SizedBox(
                  width: 120,
                  height: 100,
                ),
              ]
          ),
        ]
      )
    );
  }
}