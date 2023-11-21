import 'dart:math';

class ArmstrongNumbers {
  // Put your code here
  bool isArmstrongNumber(String number) {
    double resultado = 0;

    for (int i = 0; i < number.length; i++) {
      resultado = pow(int.parse(number[i]), number.length) + resultado;
    }

    return resultado == double.parse(number);
  }
}
