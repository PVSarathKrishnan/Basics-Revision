import 'dart:io';

void main() {
  try {
    print("enter the int numb");
    int num1 = int.parse(stdin.readLineSync() ?? "");
    print("enter the second numb");

    double num2 = double.parse(stdin.readLineSync() ?? "");

    print("sum : ${num2 + num1}");
  } catch (e) {
    print("error  : $e");
  }
}
