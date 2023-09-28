import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'calc.dart';

class res extends StatelessWidget {
  res({required this.bmires, required this.calctext, required this.quattext});
  final bmires;
  final calctext;
  final quattext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1D2136),
      body: Column(
        children: [
          Text('Your Result',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(color: Color(0xff323244),borderRadius: BorderRadius.all(Radius.circular(10.0))),
              height: 539,
              width: 350,
              child: Column(
                children: [Spacer(flex: 1,),
                  Text(calctext,
                      style: TextStyle(
                        color: Color(0xff7FC2A0),fontWeight: FontWeight.bold
                      )),Spacer(flex: 1,),
                  Text(bmires,
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),Spacer(flex: 1,),
                  Text(quattext,
                      style: TextStyle(fontSize: 20, color: Colors.white)),Spacer(flex: 1,),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('RE-CALCULATE'),
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffE83D66), fixedSize: Size(400, 50)),
          )
        ],
      ),
    );
  }
}
