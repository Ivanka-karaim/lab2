
class Person{
  String fullName;
  String phoneNumber;
  late int numberHouse;
  late String _street;
  int numberApartment;


  Person({required this.fullName, this.phoneNumber='', this.numberApartment=1});

  factory Person.fromJson(Map json) {
    return Person(fullName : json['fullName'],
        phoneNumber : json['phoneNumber']);
  }

  factory Person.children(bool expr){
    return expr? Person(fullName: ''):Employee.init(fullName: '');
  }


  setAddress(object){
    if(object is int){
      numberHouse=object;
    }else if(object is String){
      street=object;
    }
  }

  set street(String street)  {
    RegExp reg = RegExp(r'^[a-zA-Z]+$');
    final bool streetValid = reg.hasMatch(street);
    _street = streetValid? street: '';
  }
  String get street => _street;
  String printLaba2()=>"$fullName\nAddress\nStreet: $street\nNumber house: $numberHouse ";

}


class Employee extends Person{
  String position;
  double salary;

  Employee.init({required super.fullName}):salary=0, position="Manager";

  @override
  String toString(){
    return "$printLaba2\nPosition: $position\nSalary: $salary";
  }

}

