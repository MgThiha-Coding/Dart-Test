void main() {
  // Question * 1
  print(getType('String'));
  print(getType(20));
  print(getType(true));

  // Question * 2
  print(order('Chicken'));
  print(order('Chicken', 'Cola', 'Potato'));

  // Question * 3
  triple(num: 2, result: (int result) => print('The triple value is $result'));

  // Question * 4
  List<int> numList = [1, 2, 3, 4, 5, 6];
  print(addNumber(numList));
}

// Question * 1

// Write a function with a parameter of dynamic type and that return a type of parameter.
//Print this function in main.
// dynamic type parameter ၁ခု ပါတဲ့ function ၁ ခုကိုရေးပါ။ အဲ့ဒီ function က Parameter ရဲ့ Data type ကို
//String အနေနဲ့ return ပြန်ပေးရမှာဖြစ်ပါတယ်။ Main function ကနေ အဲ့ဒီ function ကိုခေါ်ပြီး print ထုတ်ပြပါ။

String getType(dynamic type) {
  return type.runtimeType.toString();
}

// Question * 2

// Create an interger function named order which has optional positional 3 String parameters
//(chicken, cola, potato).Customer must order the chicken and others are optional.
//If customer order all 3 items ,the customer will get 30% discount.
//[chicken =  2000, cola = 1000, potato = 500]
// int return ပြန်တဲ့ order ဆိုတဲ့ function 1 ခု မှာ  String data type နဲ့ (chicken, cola ,potato) ဆိုတဲ့
//positional parameter ၃ ခု ပါမယ်။ customer က chicken ကို မဖြစ်မနေမှာရမှာဖြစ်ပြီး ကျန်တာတွေကတော့ မမှာလဲရပါတယ်။
//customer ကသာ ၃ ခုလုံး မှာမယ်ဆို discount ၃၀% ရမယ်။ [chicken =  2000, cola = 1000, potato = 500]

int order(String chicken, [String? cola, String? patato]) {
  // Define prices
  const int chickenPrice = 2000;
  const int colaPrice = 1000;
  const int potatoPrice = 500;

  int total = chickenPrice;
  if (cola != null) {
    total += colaPrice;
  }
  if (patato != null) {
    total += potatoPrice;
  }
  if (cola != null && patato != null) {
    int discountPrice = total * 30 ~/ 100;
    total -= discountPrice;
  }

  return total;
}

// Question * 3

// triple လို့ အမည်ရတဲ့ Higher order function ၁ ခု ရေးပါ။ အဲဒီ function မှာ named parameter 2 ခု ပါရပါမယ်။
//ပထမ ၁ ခုက num ဆိုတဲ့ int parameter ဖြစ်ပြီးတော့ ဒုတိယ က int parameter ၁ ခုပါတဲ့ Function ဖြစ်ပါမယ်။
//အဲ့ဒီ function ကို ခေါ်ရင် ပထမ parameter မှာ ဂဏန်း ၁ ခုပေးလိုက်ရင် ဒုတိယ parameter ရဲ့ function argument ကနေ
// အဲ့ဂဏန်းရဲ့ ၃ ဆ တန်ဖိုး ထွက်ပေးရပါ့မယ်။
// Requirement:
// square(
// num : 2,
// result : (res) => print(res);
// );
// Output : 6

void triple({required int num, required Function(int) result}) {
  int tripleValue = num * 3;
  result(tripleValue);
}

//addNumber လို့ခေါ်တဲ့ function ၁ မှာ int List ၁ ခု ကို parameter အနေနဲ့ထည့်ထားမယ်။ အဲ့ဒီ function ထဲမှာပဲ
//add လို့ ခေါ်တဲ့ int function ၁ ခုထပ်ရှိပြီး list ထဲကပါတဲ့  integer တွေအားလုံးကို ပေါင်းပြီး add ကို return ပြန်ပေးရမယ်။

int addNumber(List<int> intList) {
  int total = 0;
  int add() {
    for (var i in intList) {
      total += i;
    }
    return total;
  }

  return add();
}