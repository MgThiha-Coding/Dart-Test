void main() {
  try {
    checkNumber(14);
  } on GreaterThan10Error catch (e) {
    print('${e.error}');
  } catch (e) {
    print('Error type is ${e.toString()}');
  }
}

void checkNumber(int num) {
  if (num >= 1 && num <= 10) {
    print(num);
  } else if (num > 10) {
    throw GreaterThan10Error('Number is greater than 10');
  } else {
    throw GreaterThan10Error('Number is less than 1');
  }
}

class GreaterThan10Error implements Exception {
  final String error;
  GreaterThan10Error(this.error);
}
