

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


