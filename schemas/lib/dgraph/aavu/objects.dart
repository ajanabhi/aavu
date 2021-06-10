import 'package:dstore/dstore.dart';
import 'package:dstore_dgraph/dgraph.dart';

abstract class Breed {
  @id()
  late String name;
  late String info;
  late List<String> images;
  @hasInverse("breed")
  late List<Cow> cows;
}

// Gosala or Any Farmer / Any one who raising cows
abstract class EnergyPoint {
  late ID id;
  late Point point;
  late String? name;
  late String place_id;
  late String address;
  late String info;
  late int? year; // established_year
  @hasInverse("energyPoints")
  late List<Cow> cows;
}

abstract class Cow {
  late ID id;
  late String? name;
  @hasInverse("cows")
  late Breed breed;
  @hasInverse("cows")
  late EnergyPoint energyPoint;
  late int? age;
  late double? milk;
}

abstract class Point {
  late double latitude;
  late double longitude;
}

class Hello {
  late String name;
}

abstract class Objects implements Breed, EnergyPoint, Cow {}
