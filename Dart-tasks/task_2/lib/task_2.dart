import 'dart:io';
// import 'dart:svg';

int calculate() {
  return 6 * 7;
}

void analysis(var numList){
    
    print("Operations: ");
    print("1. Maximum");
    print("2. Minimum");
    print("3. Sum");
    print("4. Average");

    //functions
    var input = stdin.readLineSync();

    switch (input) {
        case '1':
            findMaximum(numList);        
            break;
        case '2':
            findMinimum(numList);
            break;
        case '3':
            sum(numList);
            break;
        case '4':
            average(numList);
            break;
        default:
            print("Invalid input");
            exit(0);
    }

}

void findMaximum(var numList){
    var max = numList[0];
    for (var num in numList) {
        if (num > max) {
            max = num;
        }
    }
    print("Maximum: $max");
}

void findMinimum(var numList){
    var min = numList[0];
    for (var num in numList) {
        if (num < min) {
            min = num;
        }
    }
    print("Minimum: $min");
}

void sum(var numList) {
    var sum = 0;
    for (var num in numList) {        
        sum += int.parse(num);
    }
    print("Sum: $sum");
}

void average(var numList) {
    var sum = 0;
    for (int num in numList) {
        sum += num;
    }
    var average = sum/numList.length;
    print("Average: $average");
}