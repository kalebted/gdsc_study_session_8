import 'package:task_3/task_3.dart' as task_3;
import 'dart:io';

void main(List<String> arguments) {
    //print('Hello world: ${task_3.calculate()}!');
    // create class in lib
    //instantiate here
    var myCalculator = task_3.Calculator();

    print("Calculator");
    print("Enter two integer numbers:");
    print('a: ');
    int a = int.parse(stdin.readLineSync() ?? '0');
    print('b: ');
    int b = int.parse(stdin.readLineSync() ?? '0');

    myCalculator.add(a, b);
    Future.delayed(Duration(seconds: 2), () => myCalculator.subtract(a, b));
    Future.delayed(Duration(seconds: 4), () => myCalculator.multply(a, b));
    Future.delayed(Duration(seconds: 6), () => myCalculator.divide(a, b));

}
