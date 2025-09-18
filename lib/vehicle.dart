// lib/vehicle.dart
class Vehicle {
  final String brand;
  int _speed; // private field (encapsulated)
  int _year;

  Vehicle({
    required this.brand,
    required int year,
    int startingSpeed = 0,
  })  : _year = year,
        _speed = startingSpeed;

  // Getter for speed (read-only)
  int get speed => _speed;

  // Getter + Setter for year (with validation)
  int get year => _year;
  set year(int value) {
    if (value < 1886) { // first car invented in 1886
      throw ArgumentError('Year must be >= 1886.');
    }
    _year = value;
  }

  // Method 1: accelerate
  void accelerate(int increment) {
    if (increment <= 0) {
      print('Acceleration must be positive.');
      return;
    }
    _speed += increment;
    print('$brand accelerated by $increment km/h -> Speed: $_speed km/h');
  }

  // Method 2: brake
  void brake(int decrement) {
    if (decrement <= 0) {
      print('Brake value must be positive.');
      return;
    }
    _speed = (_speed - decrement).clamp(0, _speed);
    print('$brand slowed down by $decrement km/h -> Speed: $_speed km/h');
  }

  String info() => '$brand ($year) — Speed: $_speed km/h';
}
