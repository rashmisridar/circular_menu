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
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pink,
            title: Text('Flutter Circular Menu'),
          ),
          floatingActionButton: MultiCircularMenu(
              backgroundWidget: Center(
                child: Text(
                  "Flutter Circular Menu",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              menus: [
                CircularMenu(
                    toggleButtonColor: Colors.pink,
                    alignment: Alignment.bottomLeft,
                    items: [
                      CircularMenuItem(
                        onTap: () {
                          print('tapped');
                        },
                        icon: 'assets/ic_car.png',
                        color: Colors.blue,
                      ),
                      CircularMenuItem(
                        onTap: () {
                          print('tapped');
                        },
                        icon: 'assets/ic_car.png',
                        color: Colors.grey,
                      ),
                      CircularMenuItem(
                        onTap: () {
                          print('tapped');
                        },
                        icon: 'assets/ic_car.png',
                        color: Colors.green,
                      ),
                    ]),
                CircularMenu(
                    toggleButtonColor: Colors.deepPurpleAccent,
                    alignment: Alignment.bottomRight,
                    items: [
                      CircularMenuItem(
                        onTap: () {
                          print('tapped');
                        },
                        icon: 'assets/ic_car.png',
                        color: Colors.teal,
                      ),
                      CircularMenuItem(
                        onTap: () {
                          print('tapped');
                        },
                        icon: 'assets/ic_car.png',
                        color: Colors.amber,
                      ),
                      CircularMenuItem(
                        onTap: () {
                          print('tapped');
                        },
                        icon: 'assets/ic_car.png',
                        color: Colors.lightGreen,
                      ),
                    ]),
              ])),
    );
  }
}
