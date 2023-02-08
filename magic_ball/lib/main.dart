//import 'dart:js_util';

import 'package:flutter/material.dart';
import 'dart:math';
// ignore_for_file: prefer_const_constructors

void main() {
  runApp(
    MaterialApp(
      home: BallPage()
    ),
  );
}


class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 47, 175, 143),
        appBar: AppBar(
          title: Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 93, 172, 97),
        ),
        body: Ball(),
      ),
    );
  }
}


class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber1 = 1;
  int ballNumber2 = 1;

//Creando funcion para actualizar imagen aleatoria
  void updImg1() {
    setState(() {
      ballNumber1 = Random().nextInt(5) + 1;
      });
  }

  void updImg2() {
    setState(() {
      ballNumber2 = Random().nextInt(5) + 1;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () {
                  updImg1();
                },
                child: Image(
                  image: AssetImage('images/ball$ballNumber1.png'),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
              width: 350.0,
              child: Divider(
                color: Colors.white,
                thickness: 5.0,
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  updImg2();
                },
                child: Image(
                  image: AssetImage('images/ball$ballNumber2.png'),
                ),
              ),
            ),        
          ],
        ),
      ),
    );
  }
}


