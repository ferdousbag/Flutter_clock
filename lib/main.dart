import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:one_clock/one_clock.dart' as one;
import 'package:flutter_analog_clock/flutter_analog_clock.dart' as ana;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clock',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ClockPage(),
    );
  }
}

class ClockPage extends StatefulWidget {
  const ClockPage({super.key});

  @override
  State<ClockPage> createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 235, 233, 227),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width < 500
                    ? MediaQuery.of(context).size.width
                    : 500,
                height: MediaQuery.of(context).size.width < 500
                    ? MediaQuery.of(context).size.width
                    : 500,
                child: ana.AnalogClock(
                  dateTime: DateTime.now(),
                  isKeepTime: true,
                  dialColor: Colors.white,
                  dialBorderColor: Colors.black,
                  dialBorderWidthFactor: 0.02,
                  markingColor: Colors.black,
                  markingRadiusFactor: 1.0,
                  markingWidthFactor: 1.0,
                  hourNumberColor: Colors.black,
                  hourNumbers: const [
                    '',
                    '',
                    '3',
                    '',
                    '',
                    '6',
                    '',
                    '',
                    '9',
                    '',
                    '',
                    '12'
                  ],
                  hourNumberSizeFactor: 1.0,
                  hourNumberRadiusFactor: 1.0,
                  hourHandColor: Colors.black,
                  hourHandWidthFactor: 1.0,
                  hourHandLengthFactor: 1.0,
                  minuteHandColor: Colors.black,
                  minuteHandWidthFactor: 1.0,
                  minuteHandLengthFactor: 1.0,
                  secondHandColor: Colors.black,
                  secondHandWidthFactor: 1.0,
                  secondHandLengthFactor: 1.0,
                  centerPointColor: Colors.black,
                  centerPointWidthFactor: 1.0,
                ),
              ),
            ),
            one.DigitalClock(
              isLive: true,
              datetime: DateTime.now(),
              digitalClockTextColor: Colors.black,
              textScaleFactor: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}
