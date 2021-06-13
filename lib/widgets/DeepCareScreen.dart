import 'package:auto_size_text/auto_size_text.dart';
import 'package:deep_lung_care/widgets/DeepCareInstructionsScreen.dart';
import 'package:flutter/material.dart';

class DeepCareScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deep Care"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.white,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        color: Colors.white,
                        child: AutoSizeText('DEEP CARE\n\n"Você já deve ter chegado em casa cansado depois de um longo dia de trabalho, não?"\n\nAquela sensação de estresse ou infelicidade em que tudo parece dar errado.\n\nPois bem, isto é bastante comum e nosso corpo é um importante sinalizador desses momentos.\n\nSinais e sintomas corporais são bastante comuns como por exemplo:'
                            , style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
                      ),
                      Container(
                          padding: const EdgeInsets.all(25.0),
                          color: Colors.white,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                AutoSizeText('1. ESTRESSE\n', style: TextStyle(fontSize: 14, color: Colors.orangeAccent, fontWeight: FontWeight.bold)),
                                AutoSizeText('2. DOR DE CABEÇA\n', style: TextStyle(fontSize: 14, color: Colors.orangeAccent, fontWeight: FontWeight.bold)),
                                AutoSizeText('3. ANSIEDADE\n', style: TextStyle(fontSize: 14, color: Colors.orangeAccent, fontWeight: FontWeight.bold)),
                                AutoSizeText('4. TRISTEZA\n', style: TextStyle(fontSize: 14, color: Colors.orangeAccent, fontWeight: FontWeight.bold)),
                                AutoSizeText('5. CANSAÇO', style: TextStyle(fontSize: 14, color: Colors.orangeAccent, fontWeight: FontWeight.bold))
                              ]
                          )
                      ),
                      Container(
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.all(5.0),
                        color: Colors.green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              flex: 4,
                              child: Container(
                                margin: const EdgeInsets.all(5.0),
                                padding: const EdgeInsets.all(5.0),
                                child: AutoSizeText('SAIBA COMO AMENIZAR ESSAS SENSAÇÕES.\n', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center)
                              ),
                            ),
                            Expanded (
                              flex: 4,
                              child:
                              Container(
                                margin: const EdgeInsets.all(5.0),
                                padding: const EdgeInsets.all(5.0),
                                child: Card(
                                  elevation: 0,
                                  shadowColor: Colors.black,
                                  color: Colors.white,
                                  child: InkWell(
                                    splashColor: Colors.green.withAlpha(30),
                                    onTap: () => {
                                      Navigator.of(context).pop(),
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => DeepCareInstructionsScreen()),
                                      )
                                    },
                                    child: SizedBox(
                                      width: (MediaQuery.of(context).size.width) - 10,
                                      height: 60,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                                        child: Center (
                                            child : Text("EXPERIMENTE", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.orangeAccent))
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ]
                        ),
                      ),
                    ]
                )
            ),
          ]
        )
      )
    );
  }
}