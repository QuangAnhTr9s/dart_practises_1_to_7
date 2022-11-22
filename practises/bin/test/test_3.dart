class Person {
  late String _name;
  late int _age;
  static int count = 0;

  Person(String name, int age) {
    _name = name;
    _age = age;
    count ++;
  }

  @override
  String toString() {
    return 'Person{_name: $_name, _age: $_age}';
  }

  int get age => _age;

  set age(int value) {
    _age = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

}

void main() {
  Person person1 = Person("1", 1);
  print(Person.count);
  Person person2 = Person("2", 1);
  Person person3 = Person("3", 1);
  print(Person.count);
  print(person1);
  print(person2);
  print(person3);

}
