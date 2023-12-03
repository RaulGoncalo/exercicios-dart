import 'dart:math';

void main() {
  DifferenceOfSquares differenceOfSquares = DifferenceOfSquares();

  print(differenceOfSquares.sumOfSquares(5));
}

class DifferenceOfSquares {
  // Put your code here
  num squareOfSum(int number) {
    return pow(
        List.generate(number, (index) => index + 1)
            .reduce((value, element) => value + element),
        2);
  }

  num sumOfSquares(int number) {
    List<num> numberSum = List.generate(number, (index) => index + 1);

    return numberSum.reduce((value, element) => value + pow(element, 2));
  }

  num differenceOfSquares(int number) {
    return sumOfSquares(number) - sumOfSquares(number);
  }
}
