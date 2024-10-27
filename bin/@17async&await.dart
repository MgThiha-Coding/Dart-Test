import 'dart:async';

void main() {
  // Call getString
  getString()
      .then((value) => print(value)) // Success case
      .catchError(
          (e) => print('Error from getString: ${e.toString()}')); // Error case
  // Call getInt
  getInt()
      .then((data) => print(data)) // Success case
      .catchError(
          (e) => print('Error from getInt: ${e.toString()}')); // Error case
  // Using Async & await to get data and try , catch for catching errors
  /* 
    try {
    String value = await getString();
    print(value);
  } catch (e) {
    print('Error from getString: ${e.toString()}');
  }

  try {
    int data = await getInt();
    print(data);
  } catch (e) {
    print('Error from getInt: ${e.toString()}');
  }

  
  */
  // complete and timeout
  getId()
      .then((value) => print(value))
      .catchError((e) => print(e.toString()))
      .whenComplete(
        () => print('Completed'),
      )
      .timeout(
        Duration(seconds: 3),
        onTimeout: () => print('Timeout in 3 seconds'),
      );
  // Schedule a microtask to
  scheduleMicrotask(() {
    print('Microtask: I have a heavy duty');
  });

  Future(
      () => print('Immediate Future: This runs shortly after the microtask.'));

  // Synchronous tasks
  print("I'm the first synchronous task.");
  print("I'm the second synchronous task. ✌");
  print("I'm the third synchronous task. 👌");
}

Future<String> getString() {
  return Future.delayed(
      Duration(seconds: 3), () => "Completed after 3 seconds!");
}

Future<int> getInt() {
  return Future.delayed(Duration(seconds: 4), () => 10);
}

Future<int> getId() {
  return Future.delayed(Duration(seconds: 8), () => 1);
}
