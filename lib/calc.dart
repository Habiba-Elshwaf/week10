import 'dart:math';
import 'dart:math';

class Bmi {
  Bmi({
    required this.hight,
    required this.counter,
  }) {
    Bmii = counter / pow(hight / 100, 2);
  }

  final double hight;
  final double counter;
  late double Bmii;

  String getStr() {
    if (Bmii < 18.5) {
      return 'THIN';
    } else if (Bmii >= 18.5 && Bmii < 25) {
      return 'NORMAL';
    } else {
      return 'OVERWEIGHT';
    }
  }

  String calc() {
    return Bmii.toString();
  }

  String quat() {
    if (Bmii < 18.5) {
      return 'Eat More, Too Thin';
    } else if (Bmii >= 18.5 && Bmii < 25) {
      return 'Perfect';
    } else {
      return 'Stop Eating, You Are Fat';
    }
  }
}
