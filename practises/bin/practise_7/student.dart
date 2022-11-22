class Student{
  String _nameStudent;

  Student(this._nameStudent);

  String get nameStudent => _nameStudent;

  set nameStudent(String value) {
    _nameStudent = value;
  }

  @override
  String toString() {
    return "Student's name: $nameStudent";
  }


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Student &&
          runtimeType == other.runtimeType &&
          _nameStudent == other._nameStudent;

  @override
  int get hashCode => _nameStudent.hashCode;
}