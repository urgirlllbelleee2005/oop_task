// lib/car.dart
import 'vehicle.dart';

class Car extends Vehicle {
  int passengers; // unique property

  Car({
    required String brand,
    required int year,
    int startingSpeed = 0,
    this.passengers = 4,
  }) : super(brand: brand, year: year, startingSpeed: startingSpeed);

  // Unique method
  void honk() {
    print('$brand goes "Beep Beep!" with $passengers passengers.');
  }

  // Override accelerate (cars accelerate faster)
  @override
  void accelerate(int increment) {
    print('Car special acceleration boost!');
    super.accelerate(increment + 5);
  }
}
