// lib/main.dart
import 'vehicle.dart';

void main() {
  print('--- Vehicle Demo ---');

  var v = Vehicle(brand: 'Generic', year: 2000, startingSpeed: 10);
  print(v.info());
  v.accelerate(20);
  v.brake(5);
}