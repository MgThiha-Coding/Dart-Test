void main() {
  for (int i = 0; i < 10; i++) {
    print(i);
    if (i == 5) {
      break; // break at 5
    }
  }

  for (int i = 0; i < 10; i++) {
    if (i == 2) {
      continue; // jump the 2
    }
    print(i);
  }
}
