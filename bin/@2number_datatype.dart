void main() {
  // working with int
  int num1 = 10;
  print(num1.isEven);
  print(num1.isOdd);
  print(num1.isNegative);
  // working with double
  double num2 = 5.4;
  print(num2.ceil());
  print(num2.floor());
  print(num2.isNegative);

  // Type Test
  if (num1 is int) {
    print('$num1 is Integer');
  } else {
    print('false');
  }

  if (num1 is! int) {
    print('$num1 is not Intefer');
  } else {
    print('true');
  }
}
