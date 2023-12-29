int calculate() {
  return 6 * 7;
}

class Calculator{
    String add(int a, int b){
        return "Sum: ${a+b}";
    }
    String subtract(int a, int b) {
        return "Difference: ${a - b}";
    }
    String multply(int a, int b) {
        return "Product: ${a * b}";
    }
    String divide(int a, int b) {
        try {
            double quotient = a / b;
            return "Quotient: $quotient";
        } on UnsupportedError {
            return "Can't divide by 0";
        }
    }
    void results(int a, int b) {
        var results = [
            add(a, b),
            subtract(a, b),
            multply(a, b),
            divide(a, b)
        ];
        for (String result in results) {
            print(result);
        }
    }
}
