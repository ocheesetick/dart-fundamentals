import 'enums/StudentAllowance.dart';

class Student {
  final String name;
  final StudentAllowance? allowance;

  Student(this.name, this.allowance);

  void studentDetails() {
    if (allowance != null)
      print('$name\'s allowance is PHP${allowance?.allowance}');
    else
      print('$name have no allowance.');
  }
}
