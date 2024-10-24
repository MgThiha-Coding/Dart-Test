void main() {
  // (a) Higher Order Function ( lambda function as argument & function as parameter )
  showSquare(input: 3, result: (int result) => print('The result is $result'));

  showTriple(5); // (b) Higher Order Function ( Funciton as return type )

  var name = show;
  name()(
      'Hello'); // (c) Higher Order Function ( Function as return type dynamic )
  m();
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

// Higher Order Function အလုပ်လုပ် ပုံအဆင့်ဆင့်
void m() {
  // argument မှာ အလုပ်လုပ်စေချင်တဲ့(return ပြန်လာစေရန်)lambda function(anonymous function ) တစ်ခုထည့်ပေးလိုက်ပါတယ်
  triple(input: 2, result: (int result) => print('The Result is $result'));
}

void triple({required int input, required Function(int) result}) {
  // parameter မှာ၄င်း Function က်ုလက်ခ့ပြီး
  int tri = input * 3;
  // result ကိုအဲ့ဒီ function နဲ့ပဲပြန်ပို့ပေးလိုက်ပါတယ်
  result(tri);
}
