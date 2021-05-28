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
      body: SingleChildScrollView(
        child: Column(
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
                                'instructions.png'
                                ,16)),
                        ExercisesScreenCard(
                            'DIAFRAGMÁTICO',
                            11,
                            ExerciseInstructionScreen(
                            'DIAFRAGMÁTICO',
                            'Solicita-se ao paciente que inspire de forma\nsuave e profunda através do nariz, deslocando a\nregião abdominal, e expire entre os lábios,\nutilizando a expiração labial ou frenolabial.',
                            'DIAF.gif',
                            'instructions.png'
                            ,16)),
                        ExercisesScreenCard(
                            'SOLUÇOS INSP.',
                            14,
                            ExerciseInstructionScreen(
                            'SOLUÇOS INSPIRATÓRIOS',
                            'Inspiração subdividida em inspirações curtas e\nsucessivas, sem apneia pós-inspiratória até\ncompletar a capacidade inspiratória máxima\ne a capacidade pulmonar total, sendo a última\ninspiração por via oral. Expiração oral.',
                            'SOL_INSP.gif',
                            'instructions.png'
                            ,16)),
                      ]
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ExercisesScreenCard('DEEP II',
                            16,
                            ExerciseInstructionScreen(
                                'DEEP II',
                                'Inspirações até a capacidade inspiratória\nmáxima e expirações até o volume corrente',
                                'DEEP_II.gif',
                                'instructions.png'
                                ,16)),
                        ExercisesScreenCard('INSP. FRACIONADA',
                            14,
                            ExerciseInstructionScreen(
                                'INSPIRAÇÃO FRACIONADA',
                                'Inspiração nasal, suave, curta, interrompida em\ncurtos períodos de apneia pós-inspiratória e\nprogramada para 2, 3, 4, 5 ou 6 tempos repetitivos.\nA expiração é oral até o nível de repouso\nexpiratório, podendo em alguns casos se estender\nao volume de reserva expiratório médio.',
                                'INSP_FRAC.gif',
                                'instructions.png'
                                ,16)),
                      ]
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ExercisesScreenCard('LA PENA',
                            16,
                            ExerciseInstructionScreen(
                                'LA PENA',
                                'Inspiração e expiração em dois tempos com\napneias pós-inspiratórias, estabelecendo uma\nrelação TI:TE equilibrada. A inspiração é nasal,\natingindo a Capacidade Inspiratória máxima,\na expiração é oral atingindo o Volume Residual\nExpiratório máximo',
                                'LA_PENA.gif',
                                'instructions.png'
                                ,16)
                        ),
                        ExercisesScreenCard('EXP. ABREVIADA',
                            14,
                            ExerciseInstructionScreen(
                                'EXPIRAÇÃO ABREVIADA',
                                'O paciente inspira pelo nariz suave e profundame-\nnte, em seguida expira um pequena quantidade\nde ar. Volta a inspirar profundamente e expira\nnovamente uma pequena quantidade de ar. Inspira\nprofundamente pela última vez e, então, expira\n completamente. Relação I:E = 3:1.',
                                'EXP_ABREV.gif',
                                'instructions.png'
                                ,16)),
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
                          'INSPIRAÇÃO ABREVIADA',
                          'Inspiração nasal lenta, suave e uniforme até atingir\na capacidade inspiratória máxima + Apnéia pós-\ninspiratória + Expiração oral com freno labial contí-\nnua, até o volume de reserva expiratório médio +\nInspiração nasal ao nível do VC + Expiração oral até o\nVRE médio + Inspiração ao nível do VC + Expiração\noral até o VRE médio + Inspiração nasal, lenta até a\ncapacidade inspiratória máxima e por fim repouso.',
                          'INSP_ABREV.gif',
                          'instructions.png',
                      14)),
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
      )
    );
  }
}