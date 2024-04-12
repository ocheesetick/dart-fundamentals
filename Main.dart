import 'Person.dart';

void main() {
  final person = Person(name: "JT", 12);
  print(Person.greeting); // Without instance, will not consume more memory
  print(person.name);

  List<Person> listOfPeople = [
    Person(name: "Matthew", 18),
    Person(name: "Mark", 19),
    Person(name: "Luke", 20),
  ];

  final teenFilter = listOfPeople.where((person) => person.age < 20).toList();
  // print(teenFilter);

  // SET: removed all the existing repeating elements
  final john = Person(21, name: "John");
  Set<Person> setOfPeople = {
    Person(name: "Matthew", 18),
    Person(name: "Mark", 19),
    Person(name: "Luke", 20),
    john,
    john,
    john
  };
  print(setOfPeople.toString()); // Matt, Mark, Luke, John
}
