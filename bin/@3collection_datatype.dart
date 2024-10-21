void main() {
  /* List stores data by index */

  // String List
  List<String> stringList = ['Mg Mg', 'Su Su', 'Dee Dee', 'Dwe'];
  // int List
  List<int> intList = [1, 2, 3, 4, 5];
  // double List
  List<double> doubleList = [1.2, 3.5, 0.3, 5.6];
  // num List (num can store both integers and doubles)
  List<num> numList = [1, 2, 4, 3.4, 5.5];
  // dynamic List (can store values of any type)
  List<dynamic> dynamicList = [1, 2, 'three', true, 1.5];

  /* Spread Operator */
  // Merging two lists using the spread operator
  List<dynamic> mergeList = [1, 2, ...dynamicList];

  print(mergeList); // Output the merged list
  print(mergeList[2]); // Print by index (third element)

  // Filter the element '1' from mergeList using the where method
  List<dynamic> filtered = mergeList.where((e) => e == 1).toList();
  print(filtered); // Output filtered list (will contain [1, 1])

  // Retrieving data using forEach
  for (var element in mergeList) {
    print(element);
  }

  /* Set DataType (unordered) */
  Set setOne = {'Jonathan', 'Rachel', 'James', 1, 3.5, true};

  // Retrieving data from the set using forEach
  for (var element in setOne) {
    print(element);
  }

  /* Retrieving data from the set using contains */
  if (setOne.contains('Jonathan')) {
    print('Jonathan included');
  }

  /* Map DataType (Map stores data as key-value pairs) */
  Map<String, dynamic> name = {'one': 1, 'two': 2, 'three': 'Three'};

  // Defining key and value types as <String, int> for numPairs
  Map<String, int> numPairs = {
    'one': 1,
    'two': 2,
    'three': 4,
    'four': 4,
    'five': 5
  };

  // Retrieving keys and values using forEach
  numPairs.forEach((key, value) {
    print('Key: $key, Value: $value');
  });
}
