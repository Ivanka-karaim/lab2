import 'package:lab2/collections.dart' as collections;
void main(){
  print("Collections");
  print("List");
  var student = collections.Student("Ivanna");
  student.setGrades([10,11,12]);
  print(student);
  student.setGrade(8);
  print(student);
  student.setGradeIf(true, 9);
  print(student);
  student.setGradeCount(5, 10);
  print(student);

  print("Set");
  student.subjects.add("Math");
  student.subjects.addAll({"Language", "Chemistry"});


  print("Map");
  var map = {1:"погано",2:"задовільно",3:"добре",4:"відмінно"};
  int average = student.averageGrades();
  print(average);
  print(map[average]);
}