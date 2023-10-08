import 'package:flutter/material.dart';

import 'Left.dart';
import 'Next.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new
      Stack(
        children: <Widget>[
          new Offstage(
            offstage: index != 0,
            child: new TickerMode(
              enabled: index == 0,
              child: new MaterialApp(home: new YourLeftPage()),
            ),
          ),
          new Offstage(
            offstage: index != 1,
            child: new TickerMode(
              enabled: index == 1,
              child: new MaterialApp(home: new YourRightPage()),
            ),
          ),
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: index,
        onTap: (int index) { setState((){ this.index = index; }); },
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: "Left",
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.search),
            label: "Right",
          ),
        ],
      ),
    );
  }
}








