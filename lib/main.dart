import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:deep_lung_care/widgets/DeepCareScreen.dart';
import 'package:deep_lung_care/widgets/ExercisesScreen.dart';
import 'package:deep_lung_care/widgets/NavDrawer.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'assets/images/01.png',
  'assets/images/02.png',
  'assets/images/03.png',
];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text(''),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child:
                  CarouselSlider(
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
                      items: imageSliders
                  ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(imageSliders, (index, url) {
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index ? Colors.green : Colors.grey,
                    ),
                  );
                }),
              ),

              Container(
                  color: Colors.white,
                  height: 100,
                  child: Column(
                      children: <Widget>[
                        SizedBox(
                          width: (MediaQuery.of(context).size.width) - 10,
                          height: 5,
                        ),
                        Container(
                          child: SizedBox(
                            width: (MediaQuery.of(context).size.width) - 10,
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                              child: Center (
                                  child : Text("FISIOTERAPIA RESPIRATÓRIA", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green))
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: ConstrainedBox(
                            constraints: BoxConstraints.tightFor(width: 200),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  textStyle: TextStyle(fontSize: 14)
                                , side: BorderSide(width: 0.5, color: Colors.green)
                                , primary: Colors.white
                              ),
                              onPressed: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ExercisesScreen()),
                                )
                              },
                              child: Text('EXERCÍCIOS', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green)),
                            ),
                          ),
                        )

                      ]
                  ),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(5.0),
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset('assets/images/logo.webp', width: 90),
                        ),
                      ),
                      Expanded (
                        flex: 4,
                        child:
                        Container(
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(5.0),
                          child: AutoSizeText(
                            "Plataforma digital desenvolvida para auxiliar você à realizar exercícios ventilatórios de forma moderna e didática.",
                            style: TextStyle(fontSize: 14, color: Colors.green),
                          ),
                        ),
                      )
                    ]
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(5.0),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Text("DEEP CARE", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green)),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Row(
                              children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text("PARE", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                      SizedBox(height: 8),
                                      Text("RESPIRE", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                      SizedBox(height: 8),
                                      Text("PRATIQUE", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 90,
                                  child: Image.asset('assets/images/deep.png'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: (MediaQuery.of(context).size.width) - 10,
                      height: 15,
                    ),
                    Container(
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tightFor(width: 200),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(fontSize: 14)
                              , side: BorderSide(width: 0.5, color: Colors.green)
                              , primary: Colors.white
                          ),
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DeepCareScreen()
                              )
                            )
                          },
                          child: Text('EXPERIMENTE', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        )
    );
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
