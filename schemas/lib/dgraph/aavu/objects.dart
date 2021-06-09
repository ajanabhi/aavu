import 'package:dstore/dstore.dart';
import 'package:dstore_dgraph/dgraph.dart';

class Breed {
  @id()
  late String name;
  late String info;
  late List<String> images;
  @hasInverse("breeds")
  late List<EnergyPoint> energyPoints;
}

// Gosala
class EnergyPoint {
  late ID id;
  late Point point;
  late String? name;
  late String place_id;
  late String address;
  late String info;
  late int? year; // established_year
  @hasInverse("energyPoints")
  late List<Breed> cows;
}

class Point {
  late double latitude;
  late double longitude;
}

class Hello {
  late String name;
}

abstract class Objects implements Breed, EnergyPoint {}
