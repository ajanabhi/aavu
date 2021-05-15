import 'package:dstore_dgraph/dgraph.dart';

class Breed {
  @id()
  late String name;
  late String info;
  late List<String> images;
}

abstract class Objects implements Breed {}
