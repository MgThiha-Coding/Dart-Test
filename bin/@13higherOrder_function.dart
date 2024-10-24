void main() {
  // (a) Higher Order Function ( lambda function as argument & function as parameter )
  showSquare(input: 3, result: (int result) => print('The result is $result'));

  showTriple(5); // (b) Higher Order Function ( Funciton as return type )

  var name = show;
  name()(
      'Hello'); // (c) Higher Order Function ( Function as return type dynamic )
}

// (a) Higher Order Function ( lambda function as argument & function as parameter )
void showSquare({required int input, required Function(int) result}) {
  int square = input * 2;
  result(square);
}

// (b) Higher Order Function ( Function as return type )
void showTriple(int input) {
  int triple = input * 3;
  return showTri(triple);
}

void showTri(int result) => print('The Triple value is $result');

// (c) Higher Order Function ( Function as return type dynamic )
show() {
  void result(String name) => print('The name is $name');
  return result;
}
