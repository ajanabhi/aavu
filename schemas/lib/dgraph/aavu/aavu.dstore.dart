// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of aavu_schema;

// **************************************************************************
// SchemaSourceGenerator
// **************************************************************************

@JS()
@anonymous
abstract class Breed {
  external String get name;
  external set name(String value);

  external String get info;
  external set info(String value);

  external List<dynamic> get images;
  external set images(List<dynamic> value);

  external List<dynamic> get energyPoints;
  external set energyPoints(List<dynamic> value);

  external factory Breed(
      {required String name,
      required String info,
      required List<String> images,
      required List<EnergyPoint> energyPoints});
}

@JS()
@anonymous
abstract class EnergyPoint {
  external ID get id;
  external set id(ID value);

  external Point get pont;
  external set pont(Point value);

  external List<dynamic> get breeds;
  external set breeds(List<dynamic> value);

  external factory EnergyPoint(
      {required ID id, required Point pont, required List<Breed> breeds});
}
