
mixin Creature {
  void info() {
    print('Creature...');
  }
}

class Person with Creature {
  String fullName;

  Person(this.fullName);

  void getName() {
    print('$fullName...');
  }
}

