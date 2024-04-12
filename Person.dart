class Person {
  final String name;
  final int age;
  static final String greeting = "Hello there!";
  Person(this.age, {required this.name});

  @override
  String toString() => '$name';
}
