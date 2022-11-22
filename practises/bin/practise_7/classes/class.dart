import 'dart:math';

import '../student.dart';

class Class {
  String _nameClass;
  int _slotMax;
  Set<Student> _listStudent = {};
  int _slotCurrent = 0;

  Class(this._nameClass, this._slotMax, this._listStudent);

  remainMembers() {
    _slotCurrent = _listStudent.length;
    int slotMissing = _slotMax - _slotCurrent;
    return slotMissing;
  }

  //them cac hoc sinh vao
  addMembersRandom() {
    while (_listStudent.length < _slotMax) {
      String randomStudentName = generateRandomString(1);
      Student student = Student(randomStudentName);
      if (!_listStudent.contains(student)) {
        _listStudent.add(student);
      }
    }
  }

  //khoi tao mot String tu A -> Z
  String generateRandomString(int len) {
    final random = Random();
    final result = String.fromCharCodes(
        List.generate(len, (index) => random.nextInt(25) + 65));
    return result;
  }

  String get nameClass => _nameClass;

  set nameClass(String value) {
    _nameClass = value;
  }

  int get slotMax => _slotMax;

  int get slotCurrent => _slotCurrent;

  set slotCurrent(int value) {
    _slotCurrent = value;
  }

  set slotMax(int value) {
    _slotMax = value;
  }

  Set<Student> get listStudent => _listStudent;

  set listStudent(Set<Student> value) {
    _listStudent = value;
  }
}

mixin BuildAndroid {
  void buildAndroid(Class classBA) {
    print("Build Android from ${classBA._nameClass} ");
  }
}
mixin BuildIOS {
  void buildIOS(Class classBIOS) {
    print("Build Android from ${classBIOS._nameClass} ");
  }
}

mixin BuildWeb {
  void buildWeb(Class classBW) {
    print("Build Android from ${classBW._nameClass} ");
  }
}
mixin BuildDesktopApp {
  void buildDesktopApp(Class classBDA) {
    print("Build Android from ${classBDA._nameClass} ");
  }
}
