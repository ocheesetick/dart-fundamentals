import 'Person.dart';

void main() {}

void teenagerList() {
  List<Person> listOfPeople = [
    Person(name: "Matthew", 18),
    Person(name: "Mark", 19),
    Person(name: "Luke", 20),
  ];

  final teenFilter = listOfPeople.where((person) => person.age < 20).toList();
  print(teenFilter.toString());
}

void setOfPeople() {
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

void marksMap() {
  // MAP: key value pairs
  Map<String, int> marks = {"Math": 90, "English": 89, "Science": 95};
  marks["Marketing"] = 90; // Allowed. UNLIKE in List this will error
  print(marks);
  marks.remove("Math");
  print(marks);
}

void listedMapofSubjects() {
  // LIST with MAP
  List<Map<String, int>> subjectMarks = [
    {"Geometry": 90, "Physics": 87},
    {"JAVA": 92, "C": 90},
    {"Data Structures": 88, "Algorithm": 97}
  ];

  subjectMarks.map((e) {
    e.forEach((key, value) {
      print('$key: $value');
    });
  }).toList();
}
