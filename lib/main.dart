import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var i = Random().nextInt(Colors.primaries.length);
    var shades = [900, 800, 700, 600, 500, 400, 300, 200, 100, 50];
    int a = 900;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Spacer(
              flex: 1,
            ),
            Expanded(
                flex: 2,
                child: Text(
                  "Color Palette\nGenerator",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade700,
                      fontSize: 30),
                )),
            Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 9,
              child: Column(
                children: [
                  for (int j = 0; j < 10; j++)
                    Expanded(
                      child: Container(
                        color: Colors.primaries.elementAt(i)[shades[j]],
                      ),
                    ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        Container(
                          margin: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Text(
                          "Generate",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                )),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
