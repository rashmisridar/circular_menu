import 'package:flutter/material.dart';
import 'package:circular_menu/circular_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _colorName = 'No';
  Color _color = Colors.black;
  GlobalKey<CircularMenuState> key = GlobalKey<CircularMenuState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Flutter Circular Menu'),
        ),
        floatingActionButton: CircularMenu(
          alignment: Alignment.bottomCenter,
          toggleButtonColor: Colors.pink,
          items: [
            CircularMenuItem(
                icon: 'assets/ic_car.png',
                height: 30,
                width: 30, //Icons.home,,
                color: Color(0xFF31303B),
                margin: 60.0,
                padding: 10,
                iconSize: 20,
                onTap: () {
                  setState(() {
                    _color = Colors.green;
                    _colorName = 'Green';
                  });
                }),
            CircularMenuItem(
                height: 30,
                width: 30,
                icon: 'assets/ic_yatch.png',
                color: Color(0xFF31303B),
                margin: 60.0,
                padding: 10,
                iconSize: 20,
                onTap: () {
                  setState(() {
                    _color = Colors.blue;
                    _colorName = 'Blue';
                  });
                }),
            /*  CircularMenuItem(
                icon: Icons.settings,
                color: Colors.orange,
                onTap: () {
                  setState(() {
                    _color = Colors.orange;
                    _colorName = 'Orange';
                  });
                }),
            CircularMenuItem(
                icon: Icons.chat,
                color: Colors.purple,
                onTap: () {
                  setState(() {
                    _color = Colors.purple;
                    _colorName = 'Purple';
                  });
                }),*/
            CircularMenuItem(
                height: 30,
                width: 30,
                icon: 'assets/ic_jet.png',
                color: Color(0xFF31303B),
                margin: 60.0,
                padding: 10,
                iconSize: 20,
                //padding: 10.0,
                onTap: () {
                  setState(() {
                    _color = Colors.brown;
                    _colorName = 'Brown';
                  });
                })
          ],
        ),
      ),
    );
  }
}
