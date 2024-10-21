void main() {
  int i = 0;

  /* While loop */
  while (i <= 10) {
    print(i);
    i++; // variable change
  }

  /* do while loop*/
  do {
    print(i);
    i++; // variable change
  } while (i <= 10);

  /* for loop */
  // imperative
  List list = [1, 2, 3, 4, 5, 6];
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }

  // declerative
  /* for in loop */
  for (i in list) {
    print(list[i]);
  }

  // for each //
  List numList = [1, 2, 3, 4, 5];
  Map<String, int> pairs = {'one': 1, 'two': 2, 'three': 3};

  numList.forEach((e) {
    print(e);
  });

  pairs.forEach((key, value) {
    print(key);
    print(value);
  });
}
