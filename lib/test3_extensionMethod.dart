// Dart Programming language မှာရှိတဲ့ class အားလုံးမှာ သက်ရောက်မယ့် typeInfo လို့ အမည်ရတဲ့
// extension method ၁ ခုဖန်တီးပေးပါ။ အဲ့ဒီ method ရဲ့ အလုပ်ကတော့ class ရဲ့ type info ကိုပြပေးရပါမယ်။
// Eg.
// true.typeInfo(); // runtimeType
// Output :
// This is bool data type
void main() {
  // boolean
  true.TypeInfo();
  // number(int)
  int number = 10;
  number.TypeInfo();
  // String
  String name = 'Thaw Zin';
  name.TypeInfo();
  // double
  double length = 10.4;
  length.TypeInfo();
}

extension ext on Object {
  void TypeInfo() {
    print(runtimeType.toString());
  }
}
