import 'dart:math';
import 'package:flutter/material.dart';
import 'package:wave_progress_bars/wave_progress_bars.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
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
  String title = 'Wave ProgressBar';
  final List<double> _val = [];
  @override
  Widget build(BuildContext context) {
    var _range = Random();
    for(var i = 0; i < 100; i++) {
      _val.add(_range.nextInt(70) * 1.0);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: WaveProgressBar(
            width: MediaQuery.of(context).size.width,
            progressPercentage: 50.0,
            listOfHeights: _val,
            initalColor: Color(0xFF1B1F32),
            progressColor: Color(0xFFC41A3B),
            backgroundColor: Color(0xFFFBE0E6),
            timeInMilliSeconds: 2500,
            isHorizontallyAnimated: true,
            isVerticallyAnimated: true,
          ),
        ),
      ),
    );
  }
}
