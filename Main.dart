import 'Employee.dart';
import 'Person.dart';
import 'Student.dart';
import 'enums/EmployeeType.dart';
import 'enums/StudentAllowance.dart';

void main() {
  // Call in here the function you want to test/try then run it.

}

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
  // MAP: object of key value pairs
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

void studentAllowance() {
  List<Student> students = [
    Student("John", StudentAllowance.firstHonor),
    Student("Peter", StudentAllowance.secondHonor),
    Student("James", StudentAllowance.thirdHonor),
    Student("Judas", null)
  ];

  students.map((e) => e.studentDetails()).toList();
}

void employeeList() {
  List<Employee> employees = [
    Employee("Matthew", EmployeeType.finance),
    Employee("Mark", EmployeeType.se),
    Employee("Luke", EmployeeType.hr)
  ];

  employees.map((e) => e.getType()).toList();
}
