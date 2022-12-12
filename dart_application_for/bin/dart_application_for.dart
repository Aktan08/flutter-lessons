import 'package:dart_application_for/dart_application_for.dart'
    as dart_application_for;

//задание 1
first() {
  List a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List result = [];
  for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < b.length; j++) {
      if (!result.contains(a[i]) && a[i] == b[j]) {
        result.add(a[i]);
      }
    }
  }
  return (result);
}

//Второе задание
second() {
  List c = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List d = [];
  for (int i = 0; i < c.length; i++) {
    if (c[i].isEven) {
      d.add(c[i]);
    }
  }
  return (d);
}

//третее задание
int taskThree({required String x, required String z}) {
  List result = [];
  for (int i = 0; i < x.length; i++) {
    for (int j = 0; j < z.length; j++) {
      if (!result.contains(x[i]) && x[i] == z[j]) {
        result.add(x[i]);
      }
    }
  }
  return (result.length);
}

void main() {
  print('Первое задание: ${first()}');
  print('Второе задание: ${second()}');
  print('Третее задание: ${taskThree(x: "ard", z: "dart")}');
}
