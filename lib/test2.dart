void main() {
  Map<int, Student> student = {
    1: Student('David', 19, 'Male'),
    2: Student('Rachel Grace', 19, 'Female'),
    3: Student('John Aris', 24, 'Male'),
  };
  print(student);

  Shape shape = Circle();
  shape.draw();
  Shape square = Square();
  square.draw();
  Shape triangle = Triangle();
  triangle.draw();

  Currency currency1 = Currency(100);
  Currency currency2 = Currency.toUSD(3000);
  Currency currency3 = Currency.toEuro(4000);

  // Testing infoStaff function
  infoStaff(Engineer());
  infoStaff(Accountant());
  infoStaff(Designer());
}

// Create a Map of students that key  is always integer and represent as a roll number and
// value is Student object. Each of Student contains name, age and gender.
// Please create minimum 3 of the students.
// Result:
// Map<int,Student> student = {,_,___,...};
class Student {
  String name;
  int age;
  String gender;
  Student(this.name, this.age, this.gender);

  @override
  String toString() {
    return '$name $age $gender';
  }
}

// Shape လို့ အမည်ရတဲ့ abstract class ထဲမှာ draw ဆိုတဲ့ abstract method ရှိမယ်။
// သူ့မှာ Circle, Square, Triangle ဆိုပြီး Child class ၃ ခုရှိမယ်။
// main function ကနေ Shape ဆိုတဲ့ variable ထဲမှာပဲ အဲ့ ၃ ခုလုံးကို assign လုပ်ပြီး ထုတ်ပြလို့ရအောင် ရေးရမှာဖြစ်ပါတယ်။
// ဥပမာအနေဖြင့်:
// Shape shape = Circle();
abstract class Shape {
  void draw();
}

class Circle extends Shape {
  @override
  void draw() {
    print('Draw Circle');
  }
}

class Square extends Shape {
  @override
  void draw() {
    print('Draw Square');
  }
}

class Triangle extends Shape {
  @override
  void draw() {
    print('Draw Triangle');
  }
}

class Currency {
  int mmk;

  Currency(this.mmk);

  Currency.toUSD(this.mmk) {
    double usd = mmk / 1500;
    print('MMK $mmk is USD $usd');
  }

  Currency.toEuro(this.mmk) {
    double euro = mmk / 2000;
    print('MMK $mmk is Euro $euro');
  }
}

// Staff ဆိုတဲ့ Abstract class ၁ ခုမှာ Engineer, Accountant, Designer ဆိုပြီး Child class ၃ ခု ရှိမယ်။
// အဲ့ဒီ Child class တွေထဲမှာ ဘာမှ ရေးထားစရာမလိုပါဘူး။ infoStaff ဆိုတဲ့ function ထဲမှာ Staff ကို parameter အနေနဲ့ လက်ခံပြီး
// အဲ့ဒီ Staff က Engineer လား, Designer လား, Accountant လား ဆိုတာစစ်ပေးရမှာပါ။

void infoStaff(Staff staff) {
  if (staff is Engineer) {
    print('Engineer');
  } else if (staff is Accountant) {
    print('Accountant');
  } else {
    print('Designer');
  }
}

abstract class Staff {}

class Engineer extends Staff {}

class Accountant extends Staff {}

class Designer extends Staff {}
