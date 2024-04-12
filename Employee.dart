import 'enums/EmployeeType.dart';

class Employee {
  final String name;
  final EmployeeType type;

  Employee(this.name, this.type);

  void getType() {
    switch (type) {
      case EmployeeType.se:
        print("$name: Software Engineer");
      case EmployeeType.finance:
        print("$name: Finance");
      default:
        print("$name: Human Resources");
    }
  }
}
