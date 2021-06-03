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
                        child: Center(
                          child: Text("INSUFLANTES", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
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
                                'Inspiração até a metade do volume de reserva inspiratório e expiração até o volume corrente.',
                                'DEEP_I.gif',
                                'instructions.png'
                                ,16)),
                        ExercisesScreenCard(
                            'DIAFRAGMÁTICO',
                            11,
                            ExerciseInstructionScreen(
                            'DIAFRAGMÁTICO',
                            'Solicita-se ao paciente que inspire de forma suave e profunda através do nariz, deslocando a região abdominal, e expire entre os lábios, utilizando a expiração labial ou frenolabial.',
                            'DIAF.gif',
                            'instructions.png'
                            ,16)),
                        ExercisesScreenCard(
                            'SOLUÇOS INSP.',
                            14,
                            ExerciseInstructionScreen(
                            'SOLUÇOS INSPIRATÓRIOS',
                            'Inspiração subdividida em inspirações curtas e sucessivas, sem apneia pós-inspiratória até completar a capacidade inspiratória máxima e a capacidade pulmonar total, sendo a última inspiração por via oral. Expiração oral.',
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
                                'Inspirações até a capacidade inspiratória máxima e expirações até o volume corrente',
                                'DEEP_II.gif',
                                'instructions.png'
                                ,16)),
                        ExercisesScreenCard('INSP. FRACIONADA',
                            14,
                            ExerciseInstructionScreen(
                                'INSPIRAÇÃO FRACIONADA',
                                'Inspiração nasal, suave, curta, interrompida em curtos períodos de apneia pós-inspiratória e programada para 2, 3, 4, 5 ou 6 tempos repetitivos. A expiração é oral até o nível de repouso expiratório, podendo em alguns casos se estender ao volume de reserva expiratório médio.',
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
                                'Inspiração e expiração em dois tempos com apneias pós-inspiratórias, estabelecendo uma relação TI:TE equilibrada. A inspiração é nasal, atingindo a Capacidade Inspiratória máxima, a expiração é oral atingindo o Volume Residual Expiratório máximo',
                                'LA_PENA.gif',
                                'instructions.png'
                                ,16)
                        ),
                        ExercisesScreenCard('EXP. ABREVIADA',
                            14,
                            ExerciseInstructionScreen(
                                'EXPIRAÇÃO ABREVIADA',
                                'O paciente inspira pelo nariz suave e profundamente, em seguida expira um pequena quantidade de ar. Volta a inspirar profundamente e expira novamente uma pequena quantidade de ar. Inspira profundamente pela última vez e, então, expira completamente. Relação I:E = 3:1.',
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
                        child: Center(
                          child: Text("DESINSUFLANTES", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
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
                          'Inspiração nasal lenta, suave e uniforme até atingir a capacidade inspiratória máxima + Apnéia pós-inspiratória + Expiração oral com freno labial contínua, até o volume de reserva expiratório médio + Inspiração nasal ao nível do VC + Expiração oral até o VRE médio + Inspiração ao nível do VC + Expiração oral até o VRE médio + Inspiração nasal, lenta até a capacidade inspiratória máxima e por fim repouso.',
                          'INSP_ABREV.gif',
                          'instructions.png',
                      14)),
                  SizedBox(
                      width: (MediaQuery.of(context).size.width - 20) / 3,
                      height: 100,
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 20) / 3,
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