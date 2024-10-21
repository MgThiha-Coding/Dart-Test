void main() {
  dynamic b = 10;
  if (b is int) {
    print('d is integer $b ( "is" means "is integer")');
  }

  dynamic c = 10.5;
  if (c is! int) {
    print('d is not integer $c ( "is!" means "is not integer")');
  }
}
