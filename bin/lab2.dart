import 'package:lab2/lab2_1.dart' as lab2;
import 'dart:io';


void main(){
  //замикання
  Function makeAdd(int num){
    return (int i)=>i+num;
  }

  var addThree = makeAdd(3);
  var addFive = makeAdd(5);

  print(addThree(2));
  print(addFive(2));


  var object;
  //operator ??=
  object??=lab2.Person(fullName: 'Ivanka Karaim');
  object??=lab2.Person(fullName: 'Bohdan Karaim');

  print('Введіть вулицю:');
  String? input = stdin.readLineSync();

  print('Введіть будинок:');
  //operator ??
  int? house = int.tryParse(stdin.readLineSync() as String)??1;
  //operator ..
  object
    ..setAddress(input)
    ..setAddress(house);


  print(object?.printAllInformation());
  //factory1
  Map<String, dynamic> json = {'fullName': 'Ivanka Karaim', 'phoneNumber': '+380999876543'};
  var person2 = lab2.Person.fromJson(json);
  print(person2);

  //init constructor
  var employee = lab2.Employee.init(fullName: 'Ivanka Karaim');
  print(employee);

  //factory2
  var employee2;
  employee2 = lab2.Person.children(false) as lab2.Employee;
  employee2.salary = 20000.0;

  assert(employee2.salary>30000.0, 'Small salary');

  //operator ?.
  print(employee2?.getSalaryInDollars());

}


