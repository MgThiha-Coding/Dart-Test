void main() {
  showNumList([1, 2, 4]); // showNumList

  int tripleNum = triple(1);
  print(tripleNum); // send 1 to function and recieve triple

  String bio = showBiography('Json Statham', 'UK', 'British', 'British');
  print(bio); // sent details , String concatenation , and return

  String currentTime = showCurrentTime();
  print(currentTime); // no argument , no paramenter
}

/* void function */
void showNumList(List<int> numList) {
  int total = 0;
  for (var num in numList) {
    total += num;
  }
  print(numList); // numList
  print(total); // sum of nums
}

/* return function (int) */
int triple(int num) {
  return num * 3;
}

/* return function (String)*/
String showBiography(
    String name, String country, String ethnicity, String nationality) {
  String completeBio = '$name from $country is $nationality & $ethnicity';
  return completeBio;
}

String showCurrentTime() {
  DateTime now = DateTime.now();
  return 'Today is ${now.day}/${now.month}/${now.year} (${now.hour}/${now.minute})';
}

int double(int num) => num * 2; // Arrow function 
