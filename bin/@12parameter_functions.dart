void main() {
  // All parameters are required
  showInfo('Mg Mg', 20, 'Mandalay', 'Mandalay University');

  // 'address' is optional, and 'education' has a default value
  showBio('Su Su', 21);

  // 'name' is required, 'age' is optional, and 'address', 'education' have default values.
  showDetails(name: 'Kyaw Kyaw', age: 20);
}

// Positional parameters: All are required.
void showInfo(String name, int age, String address, String education) {
  print(name);
  print('$age');
  print(address);
  print(education);
}

// Optional positional parameters: 'address' is optional, 'education' has a default value.
void showBio(String name, int age,
    [String? address, String education = 'NoInfo']) {
  print(name);
  print('$age');
  print('$address');
  print(education);
}

// Named parameters: 'name' is required, 'age' is optional, 'address' is optional, 'education' has a default value.
void showDetails(
    {required String name,
    int? age,
    String? address,
    String education = 'NoInfo'}) {
  print(name);
  print('$age');
  print('$address');
  print(education);
}
