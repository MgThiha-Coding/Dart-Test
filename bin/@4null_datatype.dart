void main() {
  Map<String, dynamic> nullCheck = {
    'one': 1,
    'two': 2,
  };

  int? three = nullCheck['three']; // This will be null

  int valueOne = nullCheck['one'] ?? 0; // Use 0 if null
  int valueTwo = nullCheck['two'] ?? 0; // Use 0 if null
  int valueThree = three ?? 0; // Use 0 if null

  print('Value One: $valueOne'); // Output: Value One: 1
  print('Value Two: $valueTwo'); // Output: Value Two: 2
  print('Value Three: $valueThree'); // Output: Value Three: 0
}
