import 'dart:async';

// dart basic
void main() {
  individualDataTypes();
  collectionDataTypes();
  mapAndSetTypes();
  nullSafety();
  typeCasting();
  loops();
  parameterFunctions();
  closure();
  errorHandling();
  asyncProgramming();
  objectOrientedProgramming();
}

// --- Section 1: Basic Data Types ---
void individualDataTypes() {
  // Individual Data types with examples
  String name = 'string';
  print(name.runes); // Converting String into runes (Unicode)

  int number = 1;
  print(number);

  double decimal = 2.4;
  print(decimal);

  num dynum1 = 1;
  print(dynum1);

  num dynum2 = 10.4;
  print(dynum2);
}

// --- Section 2: Collection Data Types (Lists, Maps, Sets) ---
void collectionDataTypes() {
  // Defining dynamic and typed lists
  List<dynamic> dynamicList = [1, 2, 3, 4, 5, true, 'string'];
  List<int> intList = [1, 2, 3, 4, 5];
  List<String> stringList = ['one', 'two', 'three', 'four', 'five'];
  List<double> decimalList = [1, 2, 20.3, 20];
  List<num> numList = [1, 20.1, 20, 10];

  // Merging lists using spread operator
  List<dynamic> mergedList = ['one', false, 4, ...dynamicList];
  print(mergedList);

  // Retrieving data from List (using for-in and forEach)
  for (var item in dynamicList) {
    print(item);
  }
  dynamicList.forEach(print);
}

void mapAndSetTypes() {
  // Maps with key-value pairs (example with int keys and String values)
  Map<int, String> numberMap = {1: 'one', 2: 'two', 3: 'three', 4: 'four'};
  numberMap.forEach((key, value) => print('$key: $value'));

  // Sets (unique values only, unordered)
  Set<dynamic> uniqueSet = {1, 3, 'true', false};
  uniqueSet.forEach(print);
}

// --- Section 3: Null Safety & Type Safety ---
void nullSafety() {
  String? nullableString = '';
  print(nullableString);
}

// Type inference and casting
void typeCasting() {
  int intValue = 10;
  double doubleValue = 10.2;
  print((intValue is int) ? 'int' : 'not an int');
  print(intValue.isEven);
  print(intValue.isOdd);
  print(doubleValue.ceil());
  print(doubleValue.floor());

  // Extension method example
  intValue.triple();
}

// Extension method for tripling a number
extension Ext on num {
  void triple() => print(this * 3);
}

// --- Section 4: Control Structures (Loops, Switch) ---
void loops() {
  List<int> sampleList = [1, 2, 3, 4, 5, 6];

  // For-in loop
  for (var item in sampleList) {
    print(item);
  }

  // For loop with break
  for (int i = 0; i < sampleList.length; i++) {
    print(i);
    if (i == 3) break;
  }

  // For loop with continue
  for (int i = 0; i < sampleList.length; i++) {
    if (i == 4) continue;
    print(i);
  }

  // While and Do-while loops
  int counter = 10;
  while (counter < 15) {
    print(counter);
    counter++;
  }

  do {
    print(counter);
    counter++;
  } while (counter < 20);
}

// --- Section 5: Functions and Parameters ---
void parameterFunctions() {
  // Calling positional, optional, named parameter functions
  getData('Link', 1, true);
  getInfo('Nathan James', 21);
  Visa(passport: 'passport', citizen: 'Burmese');

  // Higher order function example
  Square(num: 2, result: (int result) => print('Square result is $result'));
}

// Positional parameter function
void getData(String data, int id, bool boolean) {
  print('$data, ID: $id, Active: $boolean');
}

// Optional and default parameter function
void getInfo(String name, int age,
    [String? religion, String? country = 'Burma']) {
  print('Name: $name, Age: $age, Religion: $religion, Country: $country');
}

// Named parameters with required fields
void Visa(
    {required String passport,
    required String citizen,
    String? relationship,
    String? sex = 'male'}) {
  print(
      'Passport: $passport, Citizen: $citizen, Relationship: ${relationship ?? 'N/A'}, Sex: $sex');
}

// Higher-order function that takes a function as parameter
void Square({required int num, required Function(int) result}) {
  result(num * num);
}

// --- Section 6: Closures and Nested Functions ---
void closure() {
  int Function() smallClosure() {
    int y = 3;
    int inner() => y;
    return inner;
  }

  var value = smallClosure();
  print(value());
}

// Nested functions example
int total() {
  int innerTask() => 10 + 20;
  return innerTask();
}

// --- Section 7: Error Handling ---
void errorHandling() {
  try {
    validateNumber(14);
  } on GreaterThan10Error catch (e) {
    print(e.error);
  } catch (e) {
    print(e.toString());
  }
}

// Custom exception
class GreaterThan10Error implements Exception {
  final String error;
  GreaterThan10Error(this.error);
}

void validateNumber(int num) {
  if (num > 10) throw GreaterThan10Error('Greater than 10 Error');
}

// --- Section 8: Asynchronous Programming ---
void asyncProgramming() {
  Future(() => print('Small async task'));
  scheduleMicrotask(() => print('Heavy async task'));

  Future<String> getString() {
    return Future.delayed(Duration(seconds: 2), () => 'Delayed for 2 seconds');
  }

  getString()
      .then(print)
      .catchError((error) => print('Error: $error'))
      .whenComplete(() => print('Completed'));
}

// --- Section 9: Object-Oriented Programming (OOP) ---
void objectOrientedProgramming() {
  Item item = Item('Shirt', 10000, 2, 10);
  item.getReceipt();

  DigitalProduct ebook =
      DigitalProduct('Ebook', 15000, 1, 'https://downloadlink.com');
  ebook.getReceipt();
}

// Abstract class
abstract class Receipt {
  void getReceipt();
}

// Mixin for discount calculation
mixin CalculateDiscount {
  double calDiscount(double price, int quantity, double discount) {
    double discountPrice = price * (discount / 100);
    double totalPrice = price * quantity;
    return totalPrice - discountPrice;
  }
}

// Item class with discount calculation
class Item extends Receipt with CalculateDiscount {
  String productName;
  double price;
  int quantity;
  double? discountPercent;

  Item(this.productName, this.price, this.quantity, [this.discountPercent]);

  double calculateTotal() {
    return discountPercent != null
        ? calDiscount(price, quantity, discountPercent!)
        : price * quantity;
  }

  @override
  void getReceipt() {
    double total = calculateTotal();
    print(
      discountPercent != null
          ? '$quantity x $productName @ $price each = $total (${discountPercent!}%) Ks'
          : '$quantity x $productName @ $price each = $total Ks',
    );
    print('Thank you for shopping!');
  }
}

// Digital product with download link
class DigitalProduct extends Item {
  String? downloadLink;

  DigitalProduct(super.productName, super.price, super.quantity,
      [this.downloadLink]);

  @override
  void getReceipt() {
    if (downloadLink != null) {
      print('Download from here: $downloadLink');
    }
    super.getReceipt();
  }
}
