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
                  child: InkWell(
                    splashColor: Colors.green.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: const SizedBox(
                      width: 300,
                      height: 100,
                      child: Text('A card that can be tapped'),
                    ),
                  ),
                ),
              ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    child: InkWell(
                      splashColor: Colors.green.withAlpha(30),
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: const SizedBox(
                        width: 300,
                        height: 100,
                        child: Text('A card that can be tapped'),
                      ),
                    ),
                  ),
                ]
            ),

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
