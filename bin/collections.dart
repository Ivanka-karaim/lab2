import 'package:lab2/collections.dart' as collections;
void main(){
  print("Collections");
  print("List");
  var student = collections.Student("Ivanna");
  student.grades.addAll([10,11,12]);
  print(student);
  student.grades.add(8);
  print(student);
  student.grades.addAll([if(3>2) 9]);
  print(student);
  student.grades.addAll([for (var i=0; i<5; i++) 10]);
  print(student);

  print("Set");
  student.subjects.add("Math");
  student.subjects.addAll({"Language", "Chemistry"});
  print(student.subjects);


  print("Map");
  var map = {1:"погано",2:"задовільно"};
  map.addAll({3:"добре",4:"відмінно"});
  int average = student.averageGrades();
  print(map[average]);
}