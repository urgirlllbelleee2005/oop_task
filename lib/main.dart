// lib/main.dart
import 'vehicle.dart';
import 'car.dart';

void main() {
  print('--- Vehicle Demo ---');
  var v = Vehicle(brand: 'Generic', year: 2000, startingSpeed: 10);
  print(v.info());
  v.accelerate(20);
  v.brake(5);

  print('\n--- Car Demo ---');
  var c = Car(brand: 'Toyota', year: 2022, passengers: 5, startingSpeed: 0);
  print(c.info());
  c.honk();
  c.accelerate(15);
  c.brake(10);
}
