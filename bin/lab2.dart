import 'package:lab2/lab2_1.dart' as lab2;
import 'dart:io';
void main(){

  Function createSummator(int base){
    return (int i)=>i+base;
  }

  var a = createSummator(7);
  print(a(5));


  var object;
  object??=lab2.Person(fullName: 'Ivanna Karaim');
  object??=lab2.Person(fullName: 'Bohdan Karaim');

  print('Введіть вулицю:');
  String? input = stdin.readLineSync();


  print('Введіть будинок:');
  int? house = int.parse(stdin.readLineSync() as String);


  object
    ..setAddress(input)
    ..setAddress(house);


  print(object?.printLaba2());

}


