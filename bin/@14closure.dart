void main() {
  int Function() show() {
    int y = 30;

    int getValue() => y;

    return getValue;
  }

  print(show().runtimeType); // Outputs: Closure
  var showFunction = show;
  var valueGetter = showFunction();
  print(valueGetter());
}
