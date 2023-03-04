
class Person{
  String fullName;
  String phoneNumber;
  late int numberHouse;
  late String _street;
  late int numberApartment;

  //параметри за замовчуванням
  Person({required this.fullName, this.phoneNumber=''});

  factory Person.fromJson(Map json) {
    return Person(fullName : json['fullName'],
        phoneNumber : json['phoneNumber']);
  }

  factory Person.children(bool expr){
    return expr? Person(fullName: ''):Employee.init(fullName: '');
  }

  //if_is
  //параметри за замовчуванням
  void setAddress(var object, [var numberAp=1]){
    if(object is int){
      numberHouse=object;
    }else if(object is String){
      street=object;
    }
    numberApartment = numberAp;
  }

  set street(String street)  {
    RegExp reg = RegExp(r'^[a-zA-Z]+$');
    final bool streetValid = reg.hasMatch(street);
    //operators ?:
    _street = streetValid? street: '';
  }

  //lambda function
  String get street => _street;

  String printAllInformation() =>"$fullName\nAddress\nStreet: $street\nNumber house: $numberHouse";

  @override
  String toString()=>"\n$fullName\n${phoneNumber!=''?"Phone number: $phoneNumber":""}";
}


class Employee extends Person{
  String position;
  double salary;

  Employee.init({required super.fullName}):salary=0, position="Manager";

  @override
  String toString(){
    return super.toString()+"Position: $position\nSalary: $salary";
  }

  double getSalaryInDollars()=>salary/40;


}

