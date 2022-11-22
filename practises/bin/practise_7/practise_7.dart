/*- Có 4 lớp học: Flutter, android, ios, web
- Có 6 học viên: A, B, C, D, E, F
- Có 4 tính năng build: build android, build ios, build web, build desktop app.
- 1 học viên có thể học ở nhiều lớp học khác nhau.*/

import 'student.dart';
import 'classes/android.dart';
import 'classes/flutter.dart';
import 'classes/ios.dart';
import 'classes/web.dart';

void main(List<String> arguments) {
  //khoi tao cac hoc sinh
  Student a = Student("A");
  Student b = Student("B");
  Student c = Student("C");
  Student d = Student("D");
  Student e = Student("E");
  Student f = Student("F");

  //khoi tao danh sach sinh vien cua tung lop
  Set<Student> listStudentFlutter = {a, b};
  Set<Student> listStudentAndroid = {b, c, d};
  Set<Student> listStudentIOS = {d, e, f};
  Set<Student> listStudentWeb = {f};

  //khoi tao cac lop hoc
  Flutter flutter = Flutter("Flutter", 11, listStudentFlutter);
  Android android = Android("Android", 12, listStudentAndroid);
  IOS ios = IOS("IOS", 13, listStudentIOS);
  WebClass web = WebClass("Web", 14, listStudentWeb);
  print(listStudentFlutter.contains(c));

  //test ham remainMembers()
  print("Số học sinh còn thiếu của lớp Flutter: ${flutter.remainMembers()}");

  //Them cac hoc sinh con thieu
  flutter.addMembersRandom();
  android.addMembersRandom();
  ios.addMembersRandom();
  web.addMembersRandom();

  //in ra danh sach cac lop sau khi da them tat ca hoc sinh
  print("Danh sách lớp học Flutter: ${flutter.listStudent.toString()}");
  print("");
  print("Danh sách lớp học Android: ${android.listStudent.toString()}");
  print("");
  print("Danh sách lớp học IOS: ${ios.listStudent.toString()}");
  print("");
  print("Danh sách lớp học Web: ${web.listStudent.toString()}");
  print("");
}
