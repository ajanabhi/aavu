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

  external factory Breed(
      {required String name,
      required String info,
      required List<String> images});
}
