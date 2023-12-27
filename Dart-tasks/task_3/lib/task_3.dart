int calculate() {
  return 6 * 7;
}

class Calculator{
    void add(int a, int b){
        print("Sum: ${a+b}");
    }
    void subtract(int a, int b) {
        print("Difference: ${a - b}");
    }
    void multply(int a, int b) {
        print("Product: ${a * b}");
    }
    void divide(int a, int b) {
        try {
            double quotient = a / b;
            print("Quotient: $quotient");
        } on UnsupportedError {
            print("Can't divide by 0");
        }
    }
}
