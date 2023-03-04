class Student{
  String fullName;
  var grades = <int>[];
  var subjects = <String>{};

  Student(this.fullName);


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
    return "$fullName\nGrade: $grades\n";
  }

}


