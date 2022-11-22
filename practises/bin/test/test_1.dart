import 'dart:math';

import '../practise_7/student.dart';

void main() {
  Set<Student> set = {};
  print(set.runtimeType);
  Student a = Student("A");
  Student b = Student("B");
  set.add(a);
  set.add(b);
  while (set.length < 5) {
    String s = generateRandomString(1);
    print(s);
    Student student = Student(s);
    Student student1 = Student("A");
    if (!set.contains(student)) {
      set.add(student);
    }
  }
  print(set);
}

String generateRandomString(int len) {
  final random = Random();
  final result = String.fromCharCodes(
      List.generate(len, (index) => random.nextInt(25) + 65));
  return result;
}
