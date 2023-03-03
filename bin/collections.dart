

class Student{
  String fullName;
  var grades = <int>[];
  var subjects = <String>{};

  Student(this.fullName);

  void setGrade(int value){
    grades.add(value);
  }

  void setGrades(var values){
    grades.addAll(values);
  }

  void setGradeIf(bool expr, int value){
    grades.addAll([if(expr) value]);

  }

  void setGradeCount(int count, int value){
    grades.addAll([for (var i=0; i<count; i++) value]);
  }


  int averageGrades(){
    int sum = 0;
    int k=0;
    for(var i=0; i<grades.length; i++){
      sum += grades[i];
      k++;
    }
    return (sum/k/3).ceil();
  }

  @override
  String toString(){
    return "$fullName\nGrade: $grades";
  }

}


void main(){
  print("List");
  var student = Student("Ivanna");
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