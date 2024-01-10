import 'package:task_3/task_3.dart' as task_3;
import 'dart:io';

void main(List<String> arguments) {
    // create class in lib
    // instantiate here
    var myCalculator = task_3.Calculator();

    print("Calculator");
    print("Enter two integer numbers:");
    print('a: ');
    int a = int.parse(stdin.readLineSync() ?? '0');
    print('b: ');
    int b = int.parse(stdin.readLineSync() ?? '0');

    Future.delayed(Duration(seconds: 5), () => myCalculator.results(a, b));
}
