//Arithmetic calculator
import 'dart:async';
import 'dart:io';

//let's define our Calculator class
class Calculator {
  double? num1, num2;
  String? operator;

  Calculator(double num1, double num2) {
    this.num1 = num1;
    this.num2 = num2;
  }

  double calculateSum() {
    return this.num1! + this.num2!;
  }

  double calculateSubtract() {
    return this.num1! - this.num2!;
  }

  double calculateMultiply() {
    return this.num1! * this.num2!;
  }

  double calculateDivide() {
    if (this.num2 == 0) {
      //handle the ZeroDivisionError by assigning exception function
      throw Exception('Error: Division by zero');
    }
    return this.num1! / this.num2!;
  }
}
/*let's create our main function that will use the
Calculator class to perform calculations and print the result.*/
void main() {
  print('Please, enter the first number: ');
  double? num1 = double.parse(stdin.readLineSync()!);
  print('Choose operator (+, -, *, /): ');
  String? operator = stdin.readLineSync()!;
  print('Please, enter the second number: ');
  double? num2 = double.parse(stdin.readLineSync()!);

  Calculator calculator = Calculator(num1, num2);
  calculate(operator, calculator);
}
//delay before printing the result
Future<void> calculate(String? operator, Calculator calculator) {
  switch (operator) {
    case '+':
      return Future.delayed(Duration(seconds: 5), () => print(calculator.calculateSum()));
    case '-':
      return Future.delayed(Duration(seconds: 5), () => print(calculator.calculateSubtract()));
    case '*':
      return Future.delayed(Duration(seconds: 5), () => print(calculator.calculateMultiply()));
    case '/':
      return Future.delayed(Duration(seconds: 5), () {
  //Let's catch the error using a try...catch block and print the error message.
        try {
          print(calculator.calculateDivide());
        } catch (e) {
          print('Error: $e');
        }
      });
    default:
      print('Invalid operator');
      return Future.value();
  }
}

