void main() {
  int num1 = 20;
  int num2 = 15;
  // if else
  if (num1 > num2) {
    print('Num1 is greater than num2');
  } else {
    print('false');
  }

  print('Num1 is int Datatypes');

  List<int> numbers = [
    1,
    3,
    4,
    5,
  ];
  if (numbers.length == 4) {
    print('length of numbers(List) is 4');
  } else {
    print('false');
  }

  // Switch case
  int num = 2;
  switch (num) {
    case 1:
      print('1');
      break;
    case 2:
      print('2');
      break;
    case 3:
      print('3');
  }
}
