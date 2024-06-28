class Person {
  String? _name; 

  Person() {
    _name = 'Jaja'; 
  }

  String get name => _name ?? ''; 
}

class Engine {
  String _model;
  double _speed; 

  Engine(this._model, this._speed);


  String get model => _model;


  double get speed => _speed;


  void displayEngineInfo() {
    print('Model: $_model');
    print('Speed: $_speed km/h');
  }
}

class Car {
  String _brand; 
  String _model; 
  Person _owner; 
  Engine _engine; 
  String? _color; 

  Car(this._brand, this._model, this._owner, this._engine, this._color);


  void displayCarInfo() {
    print('Brand: $_brand');
    print('Model: $_model');
    print('Owner: ${_owner.name}');

    print('\nEngine:'); 
    _engine.displayEngineInfo();

    if (_color != null) { 
      print('\nColor: $_color'); 
    }
  }


  set brand(String value) {

    _brand = value;
  }

  set model(String value) {

    _model = value;
  }

  set owner(Person value) {

    _owner = value;
  }

  set engine(Engine value) {

    _engine = value;
  }

  set color(String? value) {

    _color = value;
  }
}

class Honda extends Car {
  Honda(String brand, String model, Person owner, Engine engine, String color)
      : super(brand, model, owner, engine, color);


  void run() {
    print('Running at 120 km/h (Honda Speed Limit)');
  }


  void displayCarInfo() {
    super.displayCarInfo(); 
    print('Color: $_color');
  }
}

void main() {

  Person person = Person(); 


  Engine engine1 = Engine('V8', 250.0);


  Car car1 = Car('Nissan', 'GTR R34', person, engine1, 'Black');


  car1.brand = 'Honda'; 
  car1.model = 'Civic'; 



  Person person2 = Person();


  Engine engine2 = Engine('V12', 300.0);


  Car car2 = Car('Honda', 'Accord', person2, engine2, 'Blue');

  car1.displayCarInfo();
  car2.displayCarInfo();
}
