import 'package:carousel_slider/carousel_slider.dart';
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
        body: Column(
          children: <Widget>[
            CarouselSlider(
                options: CarouselOptions(
                  height: 170.0,
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
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                          child: Row(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  SizedBox(width: 360),
                                  Text("FISIOTERAPIA RESPIRATÓRIA", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green)),
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
                        height: 140,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Image.asset('assets/images/logo.webp', height: 70, width: 90),
                                  SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text("Plataforma digital desenvolvida para\nauxiliar você à realizar exercícios\nventilatórios de forma moderna e didática."
                                          , style: TextStyle(fontSize: 14, color: Colors.green)),
                                    ],
                                  ),
                                ],
                              )
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
                        height: 180,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                          child: Row(
                            children: <Widget>[
                              Text("DEEP CARE", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green)),
                              SizedBox(width: 80),
                              Column(
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
                              Spacer(),
                              Image.asset('assets/images/deep.png', height: 120),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ]
            ),



            /*Row(
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
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                          child: Row(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  SizedBox(width: 360),
                                  Text("MARCELLO TABELLI +55 51 98110-1823", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                  SizedBox(height: 8),
                                  Text("@DEEPLUNGCARE / @MARCELLOMEES", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                  SizedBox(height: 8),
                                  Text("PORTO ALEGRE, RS / BRAZIL", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ]
            ),*/

          ],
        ));
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
