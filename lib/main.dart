import 'dart:math';

import 'package:flutter/material.dart';
import 'package:week10/calc.dart';
import 'package:week10/res.dart';
import 'calc.dart';
import 'res.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI CALCULATOR',
      color: Color(0xff1D2136),
      home: const MyHomePage(title: 'BMI CALCULATOR'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double counter = 50;
  double _age = 19;
  double hight = 150;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1D2136),
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Container(
        color: Color(0xff1D2136),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: [
                    ElevatedButton(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: [
                            Icon(Icons.male, size: 80),
                            Text('MALE', style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff24263B),
                        fixedSize: Size(160, 150),
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      onPressed: () {},
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    ElevatedButton(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: [
                            Icon(Icons.female, size: 80),
                            Text('FEMALE',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff24263B),
                        fixedSize: Size(160, 150),
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xff323244),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HIGHT",
                          style: const TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0, left: 140),
                          child: Row(
                            children: [
                              Text(
                                hight.toString(),
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text('cm',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white)),
                            ],
                          ),
                        ),
                        Slider(
                          label: "Select Hight",
                          value: hight.toDouble(),
                          onChanged: (value) {
                            setState(() { hight= value;
                            });
                          },
                          min: 100,
                          max: 220,
                          divisions: 120,
                          activeColor: Color(0xffE83D66),
                          inactiveColor: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Row(
                  children: [
                    Container(
                      width: 160,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xff323244),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            Text('WIGHT',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text(
                              '$counter',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Row(
                                children: [
                                  IconButton(
                                    icon:
                                        Icon(Icons.remove, color: Colors.white),
                                    color: Color(0xf5D5F6E),
                                    onPressed: () {
                                      setState(
                                        () {
                                          counter--;
                                        },
                                      );
                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.add, color: Colors.white),
                                    color: Color(0xf5D5F6E),
                                    onPressed: () {
                                      setState(
                                        () {
                                          counter++;
                                        },
                                      );
                                    },
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Container(
                      width: 160,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xff323244),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            Text('AGE',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text(
                              '$_age',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Row(
                                children: [
                                  IconButton(
                                    icon:
                                        Icon(Icons.remove, color: Colors.white),
                                    color: Color(0xf5D5F6E),
                                    onPressed: () {
                                      setState(
                                        () {
                                          _age--;
                                        },
                                      );
                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.add, color: Colors.white),
                                    color: Color(0xf5D5F6E),
                                    onPressed: () {
                                      setState(
                                        () {
                                          _age++;
                                        },
                                      );
                                    },
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
                ElevatedButton(
                  onPressed: () {
                    Bmi calculator = Bmi(hight: hight, counter: counter);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => res(
                          bmires: calculator.calc(),
                          calctext: calculator.getStr(),
                          quattext: calculator.quat(),
                        ),
                      ),
                    );
                  },
                  child: Text('CALCULATE'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffE83D66),
                      fixedSize: Size(400, 50)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
