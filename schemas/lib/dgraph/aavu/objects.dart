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

class EnergyPoint {
  late ID id;
  late Point pont;
  @hasInverse("energyPoints")
  late List<Breed> breeds;
}

class Point {
  late double latitude;
  late double longitude;
}

class Hello {
  late String name;
}

abstract class Objects implements Breed, EnergyPoint {}
