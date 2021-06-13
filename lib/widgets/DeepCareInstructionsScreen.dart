import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'assets/images/deep_care_instructions_1.png',
  'assets/images/deep_care_instructions_2.png'
];

class DeepCareInstructionsScreen extends StatefulWidget {
  @override
  _DeepCareInstructionsScreen createState() => _DeepCareInstructionsScreen();
}

// ignore: must_be_immutable
class _DeepCareInstructionsScreen extends State<DeepCareInstructionsScreen> {
  int _currentIndex = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('DEEP CARE - PRATIQUE'),
        ),
        body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              Container(
                child: CarouselSlider(
                    options: CarouselOptions(
                      height: 160.0,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 5),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      pauseAutoPlayOnTouch: true,
                      aspectRatio: 5.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                    items: imageSliders),
              ),
              Container(
                width: (MediaQuery.of(context).size.width) - 5,
                color: Colors.white,
                padding: const EdgeInsets.all(10.0),
                child: AutoSizeText(
                  "1. ORGANIZE SEU AMBIENTE",
                  style: TextStyle(fontSize: 14, color: Colors.orangeAccent, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(0.0),
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.all(5.0),
                            child:
                                Image.asset('assets/images/deep_care_task_1.png', width: 90),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.all(5.0),
                            child: AutoSizeText(
                              "Arrume seu espaço da maneira que preferir, mas procure deixar o ambiente tranquilo e confortável.",
                              style: TextStyle(fontSize: 16, color: Colors.green),
                            ),
                          ),
                        )
                    ]),
              ),
              Container(
                width: (MediaQuery.of(context).size.width) - 5,
                color: Colors.white,
                padding: const EdgeInsets.all(10.0),
                child: AutoSizeText(
                  "2. DESAPEGUE",
                  style: TextStyle(fontSize: 14, color: Colors.orangeAccent, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(0.0),
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(5.0),
                          child:
                          Image.asset('assets/images/deep_care_task_2.png', width: 90),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(5.0),
                          child: AutoSizeText(
                            "Esqueça dos problemas do dia a dia e do trabalho e concentre-se em respirar fundo.",
                            style: TextStyle(fontSize: 16, color: Colors.green),
                          ),
                        ),
                      )
                    ]),
              ),
              Container(
                width: (MediaQuery.of(context).size.width) - 5,
                color: Colors.white,
                padding: const EdgeInsets.all(10.0),
                child: AutoSizeText(
                  "3. USE O DIAFRÁGMA",
                  style: TextStyle(fontSize: 14, color: Colors.orangeAccent, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(0.0),
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(5.0),
                          child:
                          Image.asset('assets/images/deep_care_task_3.png', width: 90),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(5.0),
                          child: AutoSizeText(
                            "Tente inflar bem a barriga ao invés do peito. Uma dica caso tenha dificuldade é iniciar a respiração deitado de barriga para cima.",
                            style: TextStyle(fontSize: 16, color: Colors.green),
                          ),
                        ),
                      )
                    ]),
              ),
              Container(
                width: (MediaQuery.of(context).size.width) - 5,
                color: Colors.white,
                padding: const EdgeInsets.all(10.0),
                child: AutoSizeText(
                  "4. DEVAGAR E SEMPRE",
                  style: TextStyle(fontSize: 14, color: Colors.orangeAccent, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(0.0),
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(5.0),
                          child:
                          Image.asset('assets/images/deep_care_task_4.png', width: 90),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(5.0),
                          child: AutoSizeText(
                            "A dica final é respirar de 6 a 8 vezes por minuito durante 15min. Os estudos cientificos nos trazem que essa simples tarefa nos auxilia no controle da ansiedade, estresse e depressão, contribuindo para uma vida mais saudável!",
                            style: TextStyle(fontSize: 16, color: Colors.green),
                          ),
                        ),
                      )
                    ]),
              ),
            ])));
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(2.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    //Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Image.asset(item),
                  ],
                )),
          ),
        ))
    .toList();
