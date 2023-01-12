import 'dart:js_util';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AvatarGlow(
                child: Icon(
                  Icons.photo_camera_front_outlined,
                  size: 40,
                  color: Colors.white,
                ),
                endRadius: 100,
                glowColor: Colors.tealAccent,
                duration: Duration(milliseconds: 2000),
              ),
              Text(
                'Syed Ali Rizvi',
                style: TextStyle(
                    fontSize: 40, fontFamily: 'Pacifico', color: Colors.white),
              ),
              Text(
                'Flutter Developer Soon',
                style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 2.5,
                    fontFamily: 'sansone',
                    color: Colors.teal[200]),
              ),
              Card(
                  color: Colors.white,
                  //  padding: EdgeInsets.all(12.0),
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.teal,
                      size: 20,
                    ),
                    title: Text(
                      '     +92 321 7803 933',
                      style: TextStyle(
                        backgroundColor: Colors.white,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
              SizedBox(
                  height: 20.0,
                  width: 20,
                  child: Divider(
                    color: Colors.teal,
                  )),
              Card(
                color: Colors.white,
                //padding: EdgeInsets.all(12.0),
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email_rounded,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '     syedalirizvi377@gmail.com',
                    style: TextStyle(
                      backgroundColor: Colors.white,
                      fontFamily: 'sansone',
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
