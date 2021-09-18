import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:intro/calling_constructor.dart';
import 'package:intro/tiles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.blueAccent, body: Tiles()),
    );
  }

  /*   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/sandip.JPG'),
              ),
                SizedBox(height:15.0,),
              Text(
                'Sandip kumar',
                style: TextStyle(
                    fontFamily: 'Pacifico-Regular.ttf',
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 30.0,),
              Text(
                'Flutter Developer',
                style: TextStyle(
                    letterSpacing: 2.0,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
               SizedBox(height: 20.0,),
              Card(
                child: ListTile(
                  leading: Icon(Icons.phone,size: 28.0,),
                  title: Text(
                    '+91 1234567890',
                    style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
               SizedBox(height: 15.0,),
              Card(
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text(
                    'sandroid@yopmail.com',
                    style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  } */
}
