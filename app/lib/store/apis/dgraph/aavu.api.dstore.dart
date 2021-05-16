// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aavu.dart';

// **************************************************************************
// GraphqlSchemaGenerator
// **************************************************************************

enum BreedOrderable { name, info }
enum __TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL
}
enum EnergyPointHasFilter { pont, breeds }
enum __DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION
}
enum Mode { BATCH, SINGLE }
enum DgraphIndex {
  int,
  int64,
  float,
  bool,
  hash,
  exact,
  term,
  fulltext,
  trigram,
  regexp,
  year,
  month,
  day,
  hour,
  geo
}
enum HTTPMethod { GET, POST, PUT, PATCH, DELETE }
enum BreedHasFilter { name, info, images, energyPoints }

@JsonSerializable()
class UpdateBreedInput {
  final BreedFilter filter;

  final BreedPatch? set;

  final BreedPatch? remove;

  @JsonKey(ignore: true)
  _$UpdateBreedInputCopyWith<UpdateBreedInput> get copyWith =>
      __$UpdateBreedInputCopyWithImpl<UpdateBreedInput>(this, IdentityFn);

  const UpdateBreedInput({required this.filter, this.set, this.remove});

  factory UpdateBreedInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateBreedInputFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateBreedInputToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is UpdateBreedInput &&
        o.filter == filter &&
        o.set == set &&
        o.remove == remove;
  }

  @override
  int get hashCode => filter.hashCode ^ set.hashCode ^ remove.hashCode;

  @override
  String toString() =>
      "UpdateBreedInput(filter: ${this.filter}, set: ${this.set}, remove: ${this.remove})";
}

abstract class $UpdateBreedInputCopyWith<O> {
  factory $UpdateBreedInputCopyWith(
          UpdateBreedInput value, O Function(UpdateBreedInput) then) =
      _$UpdateBreedInputCopyWithImpl<O>;
  O call({BreedFilter filter, BreedPatch? set, BreedPatch? remove});
}

class _$UpdateBreedInputCopyWithImpl<O>
    implements $UpdateBreedInputCopyWith<O> {
  final UpdateBreedInput _value;
  final O Function(UpdateBreedInput) _then;
  _$UpdateBreedInputCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? filter = dimmutable,
      Object? set = dimmutable,
      Object? remove = dimmutable}) {
    return _then(_value.copyWith(
        filter: filter == dimmutable ? _value.filter : filter as BreedFilter,
        set: set == dimmutable ? _value.set : set as BreedPatch?,
        remove: remove == dimmutable ? _value.remove : remove as BreedPatch?));
  }
}

abstract class _$UpdateBreedInputCopyWith<O>
    implements $UpdateBreedInputCopyWith<O> {
  factory _$UpdateBreedInputCopyWith(
          UpdateBreedInput value, O Function(UpdateBreedInput) then) =
      __$UpdateBreedInputCopyWithImpl<O>;
  O call({BreedFilter filter, BreedPatch? set, BreedPatch? remove});
}

class __$UpdateBreedInputCopyWithImpl<O>
    extends _$UpdateBreedInputCopyWithImpl<O>
    implements _$UpdateBreedInputCopyWith<O> {
  __$UpdateBreedInputCopyWithImpl(
      UpdateBreedInput _value, O Function(UpdateBreedInput) _then)
      : super(_value, (v) => _then(v));

  @override
  UpdateBreedInput get _value => super._value;

  @override
  O call(
      {Object? filter = dimmutable,
      Object? set = dimmutable,
      Object? remove = dimmutable}) {
    return _then(UpdateBreedInput(
        filter: filter == dimmutable ? _value.filter : filter as BreedFilter,
        set: set == dimmutable ? _value.set : set as BreedPatch?,
        remove: remove == dimmutable ? _value.remove : remove as BreedPatch?));
  }
}

@JsonSerializable()
class PointRef {
  final double longitude;

  final double latitude;

  @JsonKey(ignore: true)
  _$PointRefCopyWith<PointRef> get copyWith =>
      __$PointRefCopyWithImpl<PointRef>(this, IdentityFn);

  const PointRef({required this.longitude, required this.latitude});

  factory PointRef.fromJson(Map<String, dynamic> json) =>
      _$PointRefFromJson(json);

  Map<String, dynamic> toJson() => _$PointRefToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is PointRef && o.longitude == longitude && o.latitude == latitude;
  }

  @override
  int get hashCode => longitude.hashCode ^ latitude.hashCode;

  @override
  String toString() =>
      "PointRef(longitude: ${this.longitude}, latitude: ${this.latitude})";
}

abstract class $PointRefCopyWith<O> {
  factory $PointRefCopyWith(PointRef value, O Function(PointRef) then) =
      _$PointRefCopyWithImpl<O>;
  O call({double longitude, double latitude});
}

class _$PointRefCopyWithImpl<O> implements $PointRefCopyWith<O> {
  final PointRef _value;
  final O Function(PointRef) _then;
  _$PointRefCopyWithImpl(this._value, this._then);

  @override
  O call({Object? longitude = dimmutable, Object? latitude = dimmutable}) {
    return _then(_value.copyWith(
        longitude:
            longitude == dimmutable ? _value.longitude : longitude as double,
        latitude:
            latitude == dimmutable ? _value.latitude : latitude as double));
  }
}

abstract class _$PointRefCopyWith<O> implements $PointRefCopyWith<O> {
  factory _$PointRefCopyWith(PointRef value, O Function(PointRef) then) =
      __$PointRefCopyWithImpl<O>;
  O call({double longitude, double latitude});
}

class __$PointRefCopyWithImpl<O> extends _$PointRefCopyWithImpl<O>
    implements _$PointRefCopyWith<O> {
  __$PointRefCopyWithImpl(PointRef _value, O Function(PointRef) _then)
      : super(_value, (v) => _then(v));

  @override
  PointRef get _value => super._value;

  @override
  O call({Object? longitude = dimmutable, Object? latitude = dimmutable}) {
    return _then(PointRef(
        longitude:
            longitude == dimmutable ? _value.longitude : longitude as double,
        latitude:
            latitude == dimmutable ? _value.latitude : latitude as double));
  }
}

@JsonSerializable()
class PointGeoFilter {
  final NearFilter? near;

  final WithinFilter? within;

  @JsonKey(ignore: true)
  _$PointGeoFilterCopyWith<PointGeoFilter> get copyWith =>
      __$PointGeoFilterCopyWithImpl<PointGeoFilter>(this, IdentityFn);

  const PointGeoFilter({this.near, this.within});

  factory PointGeoFilter.fromJson(Map<String, dynamic> json) =>
      _$PointGeoFilterFromJson(json);

  Map<String, dynamic> toJson() => _$PointGeoFilterToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is PointGeoFilter && o.near == near && o.within == within;
  }

  @override
  int get hashCode => near.hashCode ^ within.hashCode;

  @override
  String toString() =>
      "PointGeoFilter(near: ${this.near}, within: ${this.within})";
}

abstract class $PointGeoFilterCopyWith<O> {
  factory $PointGeoFilterCopyWith(
          PointGeoFilter value, O Function(PointGeoFilter) then) =
      _$PointGeoFilterCopyWithImpl<O>;
  O call({NearFilter? near, WithinFilter? within});
}

class _$PointGeoFilterCopyWithImpl<O> implements $PointGeoFilterCopyWith<O> {
  final PointGeoFilter _value;
  final O Function(PointGeoFilter) _then;
  _$PointGeoFilterCopyWithImpl(this._value, this._then);

  @override
  O call({Object? near = dimmutable, Object? within = dimmutable}) {
    return _then(_value.copyWith(
        near: near == dimmutable ? _value.near : near as NearFilter?,
        within:
            within == dimmutable ? _value.within : within as WithinFilter?));
  }
}

abstract class _$PointGeoFilterCopyWith<O>
    implements $PointGeoFilterCopyWith<O> {
  factory _$PointGeoFilterCopyWith(
          PointGeoFilter value, O Function(PointGeoFilter) then) =
      __$PointGeoFilterCopyWithImpl<O>;
  O call({NearFilter? near, WithinFilter? within});
}

class __$PointGeoFilterCopyWithImpl<O> extends _$PointGeoFilterCopyWithImpl<O>
    implements _$PointGeoFilterCopyWith<O> {
  __$PointGeoFilterCopyWithImpl(
      PointGeoFilter _value, O Function(PointGeoFilter) _then)
      : super(_value, (v) => _then(v));

  @override
  PointGeoFilter get _value => super._value;

  @override
  O call({Object? near = dimmutable, Object? within = dimmutable}) {
    return _then(PointGeoFilter(
        near: near == dimmutable ? _value.near : near as NearFilter?,
        within:
            within == dimmutable ? _value.within : within as WithinFilter?));
  }
}

@JsonSerializable()
class StringExactFilter {
  final String? eq;

  @JsonKey(name: 'in')
  final List<String?>? in_$d;

  final String? le;

  final String? lt;

  final String? ge;

  final String? gt;

  final StringRange? between;

  @JsonKey(ignore: true)
  _$StringExactFilterCopyWith<StringExactFilter> get copyWith =>
      __$StringExactFilterCopyWithImpl<StringExactFilter>(this, IdentityFn);

  const StringExactFilter(
      {this.eq, this.in_$d, this.le, this.lt, this.ge, this.gt, this.between});

  factory StringExactFilter.fromJson(Map<String, dynamic> json) =>
      _$StringExactFilterFromJson(json);

  Map<String, dynamic> toJson() => _$StringExactFilterToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is StringExactFilter &&
        o.eq == eq &&
        o.in_$d == in_$d &&
        o.le == le &&
        o.lt == lt &&
        o.ge == ge &&
        o.gt == gt &&
        o.between == between;
  }

  @override
  int get hashCode =>
      eq.hashCode ^
      in_$d.hashCode ^
      le.hashCode ^
      lt.hashCode ^
      ge.hashCode ^
      gt.hashCode ^
      between.hashCode;

  @override
  String toString() =>
      "StringExactFilter(eq: ${this.eq}, in_\$d: ${this.in_$d}, le: ${this.le}, lt: ${this.lt}, ge: ${this.ge}, gt: ${this.gt}, between: ${this.between})";
}

abstract class $StringExactFilterCopyWith<O> {
  factory $StringExactFilterCopyWith(
          StringExactFilter value, O Function(StringExactFilter) then) =
      _$StringExactFilterCopyWithImpl<O>;
  O call(
      {String? eq,
      List<String?>? in_$d,
      String? le,
      String? lt,
      String? ge,
      String? gt,
      StringRange? between});
}

class _$StringExactFilterCopyWithImpl<O>
    implements $StringExactFilterCopyWith<O> {
  final StringExactFilter _value;
  final O Function(StringExactFilter) _then;
  _$StringExactFilterCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? eq = dimmutable,
      Object? in_$d = dimmutable,
      Object? le = dimmutable,
      Object? lt = dimmutable,
      Object? ge = dimmutable,
      Object? gt = dimmutable,
      Object? between = dimmutable}) {
    return _then(_value.copyWith(
        eq: eq == dimmutable ? _value.eq : eq as String?,
        in_$d: in_$d == dimmutable ? _value.in_$d : in_$d as List<String?>?,
        le: le == dimmutable ? _value.le : le as String?,
        lt: lt == dimmutable ? _value.lt : lt as String?,
        ge: ge == dimmutable ? _value.ge : ge as String?,
        gt: gt == dimmutable ? _value.gt : gt as String?,
        between:
            between == dimmutable ? _value.between : between as StringRange?));
  }
}

abstract class _$StringExactFilterCopyWith<O>
    implements $StringExactFilterCopyWith<O> {
  factory _$StringExactFilterCopyWith(
          StringExactFilter value, O Function(StringExactFilter) then) =
      __$StringExactFilterCopyWithImpl<O>;
  O call(
      {String? eq,
      List<String?>? in_$d,
      String? le,
      String? lt,
      String? ge,
      String? gt,
      StringRange? between});
}

class __$StringExactFilterCopyWithImpl<O>
    extends _$StringExactFilterCopyWithImpl<O>
    implements _$StringExactFilterCopyWith<O> {
  __$StringExactFilterCopyWithImpl(
      StringExactFilter _value, O Function(StringExactFilter) _then)
      : super(_value, (v) => _then(v));

  @override
  StringExactFilter get _value => super._value;

  @override
  O call(
      {Object? eq = dimmutable,
      Object? in_$d = dimmutable,
      Object? le = dimmutable,
      Object? lt = dimmutable,
      Object? ge = dimmutable,
      Object? gt = dimmutable,
      Object? between = dimmutable}) {
    return _then(StringExactFilter(
        eq: eq == dimmutable ? _value.eq : eq as String?,
        in_$d: in_$d == dimmutable ? _value.in_$d : in_$d as List<String?>?,
        le: le == dimmutable ? _value.le : le as String?,
        lt: lt == dimmutable ? _value.lt : lt as String?,
        ge: ge == dimmutable ? _value.ge : ge as String?,
        gt: gt == dimmutable ? _value.gt : gt as String?,
        between:
            between == dimmutable ? _value.between : between as StringRange?));
  }
}

@JsonSerializable()
class BreedFilter {
  final StringHashFilter? name;

  final List<BreedHasFilter?>? has;

  final List<BreedFilter?>? and;

  final List<BreedFilter?>? or;

  final BreedFilter? not;

  @JsonKey(ignore: true)
  _$BreedFilterCopyWith<BreedFilter> get copyWith =>
      __$BreedFilterCopyWithImpl<BreedFilter>(this, IdentityFn);

  const BreedFilter({this.name, this.has, this.and, this.or, this.not});

  factory BreedFilter.fromJson(Map<String, dynamic> json) =>
      _$BreedFilterFromJson(json);

  Map<String, dynamic> toJson() => _$BreedFilterToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is BreedFilter &&
        o.name == name &&
        o.has == has &&
        o.and == and &&
        o.or == or &&
        o.not == not;
  }

  @override
  int get hashCode =>
      name.hashCode ^ has.hashCode ^ and.hashCode ^ or.hashCode ^ not.hashCode;

  @override
  String toString() =>
      "BreedFilter(name: ${this.name}, has: ${this.has}, and: ${this.and}, or: ${this.or}, not: ${this.not})";
}

abstract class $BreedFilterCopyWith<O> {
  factory $BreedFilterCopyWith(
          BreedFilter value, O Function(BreedFilter) then) =
      _$BreedFilterCopyWithImpl<O>;
  O call(
      {StringHashFilter? name,
      List<BreedHasFilter?>? has,
      List<BreedFilter?>? and,
      List<BreedFilter?>? or,
      BreedFilter? not});
}

class _$BreedFilterCopyWithImpl<O> implements $BreedFilterCopyWith<O> {
  final BreedFilter _value;
  final O Function(BreedFilter) _then;
  _$BreedFilterCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? name = dimmutable,
      Object? has = dimmutable,
      Object? and = dimmutable,
      Object? or = dimmutable,
      Object? not = dimmutable}) {
    return _then(_value.copyWith(
        name: name == dimmutable ? _value.name : name as StringHashFilter?,
        has: has == dimmutable ? _value.has : has as List<BreedHasFilter?>?,
        and: and == dimmutable ? _value.and : and as List<BreedFilter?>?,
        or: or == dimmutable ? _value.or : or as List<BreedFilter?>?,
        not: not == dimmutable ? _value.not : not as BreedFilter?));
  }
}

abstract class _$BreedFilterCopyWith<O> implements $BreedFilterCopyWith<O> {
  factory _$BreedFilterCopyWith(
          BreedFilter value, O Function(BreedFilter) then) =
      __$BreedFilterCopyWithImpl<O>;
  O call(
      {StringHashFilter? name,
      List<BreedHasFilter?>? has,
      List<BreedFilter?>? and,
      List<BreedFilter?>? or,
      BreedFilter? not});
}

class __$BreedFilterCopyWithImpl<O> extends _$BreedFilterCopyWithImpl<O>
    implements _$BreedFilterCopyWith<O> {
  __$BreedFilterCopyWithImpl(BreedFilter _value, O Function(BreedFilter) _then)
      : super(_value, (v) => _then(v));

  @override
  BreedFilter get _value => super._value;

  @override
  O call(
      {Object? name = dimmutable,
      Object? has = dimmutable,
      Object? and = dimmutable,
      Object? or = dimmutable,
      Object? not = dimmutable}) {
    return _then(BreedFilter(
        name: name == dimmutable ? _value.name : name as StringHashFilter?,
        has: has == dimmutable ? _value.has : has as List<BreedHasFilter?>?,
        and: and == dimmutable ? _value.and : and as List<BreedFilter?>?,
        or: or == dimmutable ? _value.or : or as List<BreedFilter?>?,
        not: not == dimmutable ? _value.not : not as BreedFilter?));
  }
}

@JsonSerializable()
class BreedPatch {
  final String? name;

  final String? info;

  final List<String>? images;

  final List<EnergyPointRef>? energyPoints;

  @JsonKey(ignore: true)
  _$BreedPatchCopyWith<BreedPatch> get copyWith =>
      __$BreedPatchCopyWithImpl<BreedPatch>(this, IdentityFn);

  const BreedPatch({this.name, this.info, this.images, this.energyPoints});

  factory BreedPatch.fromJson(Map<String, dynamic> json) =>
      _$BreedPatchFromJson(json);

  Map<String, dynamic> toJson() => _$BreedPatchToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is BreedPatch &&
        o.name == name &&
        o.info == info &&
        o.images == images &&
        o.energyPoints == energyPoints;
  }

  @override
  int get hashCode =>
      name.hashCode ^ info.hashCode ^ images.hashCode ^ energyPoints.hashCode;

  @override
  String toString() =>
      "BreedPatch(name: ${this.name}, info: ${this.info}, images: ${this.images}, energyPoints: ${this.energyPoints})";
}

abstract class $BreedPatchCopyWith<O> {
  factory $BreedPatchCopyWith(BreedPatch value, O Function(BreedPatch) then) =
      _$BreedPatchCopyWithImpl<O>;
  O call(
      {String? name,
      String? info,
      List<String>? images,
      List<EnergyPointRef>? energyPoints});
}

class _$BreedPatchCopyWithImpl<O> implements $BreedPatchCopyWith<O> {
  final BreedPatch _value;
  final O Function(BreedPatch) _then;
  _$BreedPatchCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? name = dimmutable,
      Object? info = dimmutable,
      Object? images = dimmutable,
      Object? energyPoints = dimmutable}) {
    return _then(_value.copyWith(
        name: name == dimmutable ? _value.name : name as String?,
        info: info == dimmutable ? _value.info : info as String?,
        images: images == dimmutable ? _value.images : images as List<String>?,
        energyPoints: energyPoints == dimmutable
            ? _value.energyPoints
            : energyPoints as List<EnergyPointRef>?));
  }
}

abstract class _$BreedPatchCopyWith<O> implements $BreedPatchCopyWith<O> {
  factory _$BreedPatchCopyWith(BreedPatch value, O Function(BreedPatch) then) =
      __$BreedPatchCopyWithImpl<O>;
  O call(
      {String? name,
      String? info,
      List<String>? images,
      List<EnergyPointRef>? energyPoints});
}

class __$BreedPatchCopyWithImpl<O> extends _$BreedPatchCopyWithImpl<O>
    implements _$BreedPatchCopyWith<O> {
  __$BreedPatchCopyWithImpl(BreedPatch _value, O Function(BreedPatch) _then)
      : super(_value, (v) => _then(v));

  @override
  BreedPatch get _value => super._value;

  @override
  O call(
      {Object? name = dimmutable,
      Object? info = dimmutable,
      Object? images = dimmutable,
      Object? energyPoints = dimmutable}) {
    return _then(BreedPatch(
        name: name == dimmutable ? _value.name : name as String?,
        info: info == dimmutable ? _value.info : info as String?,
        images: images == dimmutable ? _value.images : images as List<String>?,
        energyPoints: energyPoints == dimmutable
            ? _value.energyPoints
            : energyPoints as List<EnergyPointRef>?));
  }
}

@JsonSerializable()
class FloatRange {
  final double min;

  final double max;

  @JsonKey(ignore: true)
  _$FloatRangeCopyWith<FloatRange> get copyWith =>
      __$FloatRangeCopyWithImpl<FloatRange>(this, IdentityFn);

  const FloatRange({required this.min, required this.max});

  factory FloatRange.fromJson(Map<String, dynamic> json) =>
      _$FloatRangeFromJson(json);

  Map<String, dynamic> toJson() => _$FloatRangeToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is FloatRange && o.min == min && o.max == max;
  }

  @override
  int get hashCode => min.hashCode ^ max.hashCode;

  @override
  String toString() => "FloatRange(min: ${this.min}, max: ${this.max})";
}

abstract class $FloatRangeCopyWith<O> {
  factory $FloatRangeCopyWith(FloatRange value, O Function(FloatRange) then) =
      _$FloatRangeCopyWithImpl<O>;
  O call({double min, double max});
}

class _$FloatRangeCopyWithImpl<O> implements $FloatRangeCopyWith<O> {
  final FloatRange _value;
  final O Function(FloatRange) _then;
  _$FloatRangeCopyWithImpl(this._value, this._then);

  @override
  O call({Object? min = dimmutable, Object? max = dimmutable}) {
    return _then(_value.copyWith(
        min: min == dimmutable ? _value.min : min as double,
        max: max == dimmutable ? _value.max : max as double));
  }
}

abstract class _$FloatRangeCopyWith<O> implements $FloatRangeCopyWith<O> {
  factory _$FloatRangeCopyWith(FloatRange value, O Function(FloatRange) then) =
      __$FloatRangeCopyWithImpl<O>;
  O call({double min, double max});
}

class __$FloatRangeCopyWithImpl<O> extends _$FloatRangeCopyWithImpl<O>
    implements _$FloatRangeCopyWith<O> {
  __$FloatRangeCopyWithImpl(FloatRange _value, O Function(FloatRange) _then)
      : super(_value, (v) => _then(v));

  @override
  FloatRange get _value => super._value;

  @override
  O call({Object? min = dimmutable, Object? max = dimmutable}) {
    return _then(FloatRange(
        min: min == dimmutable ? _value.min : min as double,
        max: max == dimmutable ? _value.max : max as double));
  }
}

@JsonSerializable()
class PolygonRef {
  final List<PointListRef> coordinates;

  @JsonKey(ignore: true)
  _$PolygonRefCopyWith<PolygonRef> get copyWith =>
      __$PolygonRefCopyWithImpl<PolygonRef>(this, IdentityFn);

  const PolygonRef({required this.coordinates});

  factory PolygonRef.fromJson(Map<String, dynamic> json) =>
      _$PolygonRefFromJson(json);

  Map<String, dynamic> toJson() => _$PolygonRefToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is PolygonRef && o.coordinates == coordinates;
  }

  @override
  int get hashCode => coordinates.hashCode;

  @override
  String toString() => "PolygonRef(coordinates: ${this.coordinates})";
}

abstract class $PolygonRefCopyWith<O> {
  factory $PolygonRefCopyWith(PolygonRef value, O Function(PolygonRef) then) =
      _$PolygonRefCopyWithImpl<O>;
  O call({List<PointListRef> coordinates});
}

class _$PolygonRefCopyWithImpl<O> implements $PolygonRefCopyWith<O> {
  final PolygonRef _value;
  final O Function(PolygonRef) _then;
  _$PolygonRefCopyWithImpl(this._value, this._then);

  @override
  O call({Object? coordinates = dimmutable}) {
    return _then(_value.copyWith(
        coordinates: coordinates == dimmutable
            ? _value.coordinates
            : coordinates as List<PointListRef>));
  }
}

abstract class _$PolygonRefCopyWith<O> implements $PolygonRefCopyWith<O> {
  factory _$PolygonRefCopyWith(PolygonRef value, O Function(PolygonRef) then) =
      __$PolygonRefCopyWithImpl<O>;
  O call({List<PointListRef> coordinates});
}

class __$PolygonRefCopyWithImpl<O> extends _$PolygonRefCopyWithImpl<O>
    implements _$PolygonRefCopyWith<O> {
  __$PolygonRefCopyWithImpl(PolygonRef _value, O Function(PolygonRef) _then)
      : super(_value, (v) => _then(v));

  @override
  PolygonRef get _value => super._value;

  @override
  O call({Object? coordinates = dimmutable}) {
    return _then(PolygonRef(
        coordinates: coordinates == dimmutable
            ? _value.coordinates
            : coordinates as List<PointListRef>));
  }
}

@JsonSerializable()
class ContainsFilter {
  final PointRef? point;

  final PolygonRef? polygon;

  @JsonKey(ignore: true)
  _$ContainsFilterCopyWith<ContainsFilter> get copyWith =>
      __$ContainsFilterCopyWithImpl<ContainsFilter>(this, IdentityFn);

  const ContainsFilter({this.point, this.polygon});

  factory ContainsFilter.fromJson(Map<String, dynamic> json) =>
      _$ContainsFilterFromJson(json);

  Map<String, dynamic> toJson() => _$ContainsFilterToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ContainsFilter && o.point == point && o.polygon == polygon;
  }

  @override
  int get hashCode => point.hashCode ^ polygon.hashCode;

  @override
  String toString() =>
      "ContainsFilter(point: ${this.point}, polygon: ${this.polygon})";
}

abstract class $ContainsFilterCopyWith<O> {
  factory $ContainsFilterCopyWith(
          ContainsFilter value, O Function(ContainsFilter) then) =
      _$ContainsFilterCopyWithImpl<O>;
  O call({PointRef? point, PolygonRef? polygon});
}

class _$ContainsFilterCopyWithImpl<O> implements $ContainsFilterCopyWith<O> {
  final ContainsFilter _value;
  final O Function(ContainsFilter) _then;
  _$ContainsFilterCopyWithImpl(this._value, this._then);

  @override
  O call({Object? point = dimmutable, Object? polygon = dimmutable}) {
    return _then(_value.copyWith(
        point: point == dimmutable ? _value.point : point as PointRef?,
        polygon:
            polygon == dimmutable ? _value.polygon : polygon as PolygonRef?));
  }
}

abstract class _$ContainsFilterCopyWith<O>
    implements $ContainsFilterCopyWith<O> {
  factory _$ContainsFilterCopyWith(
          ContainsFilter value, O Function(ContainsFilter) then) =
      __$ContainsFilterCopyWithImpl<O>;
  O call({PointRef? point, PolygonRef? polygon});
}

class __$ContainsFilterCopyWithImpl<O> extends _$ContainsFilterCopyWithImpl<O>
    implements _$ContainsFilterCopyWith<O> {
  __$ContainsFilterCopyWithImpl(
      ContainsFilter _value, O Function(ContainsFilter) _then)
      : super(_value, (v) => _then(v));

  @override
  ContainsFilter get _value => super._value;

  @override
  O call({Object? point = dimmutable, Object? polygon = dimmutable}) {
    return _then(ContainsFilter(
        point: point == dimmutable ? _value.point : point as PointRef?,
        polygon:
            polygon == dimmutable ? _value.polygon : polygon as PolygonRef?));
  }
}

@JsonSerializable()
class BreedOrder {
  final BreedOrderable? asc;

  final BreedOrderable? desc;

  final BreedOrder? then;

  @JsonKey(ignore: true)
  _$BreedOrderCopyWith<BreedOrder> get copyWith =>
      __$BreedOrderCopyWithImpl<BreedOrder>(this, IdentityFn);

  const BreedOrder({this.asc, this.desc, this.then});

  factory BreedOrder.fromJson(Map<String, dynamic> json) =>
      _$BreedOrderFromJson(json);

  Map<String, dynamic> toJson() => _$BreedOrderToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is BreedOrder && o.asc == asc && o.desc == desc && o.then == then;
  }

  @override
  int get hashCode => asc.hashCode ^ desc.hashCode ^ then.hashCode;

  @override
  String toString() =>
      "BreedOrder(asc: ${this.asc}, desc: ${this.desc}, then: ${this.then})";
}

abstract class $BreedOrderCopyWith<O> {
  factory $BreedOrderCopyWith(BreedOrder value, O Function(BreedOrder) then) =
      _$BreedOrderCopyWithImpl<O>;
  O call({BreedOrderable? asc, BreedOrderable? desc, BreedOrder? then});
}

class _$BreedOrderCopyWithImpl<O> implements $BreedOrderCopyWith<O> {
  final BreedOrder _value;
  final O Function(BreedOrder) _then;
  _$BreedOrderCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? asc = dimmutable,
      Object? desc = dimmutable,
      Object? then = dimmutable}) {
    return _then(_value.copyWith(
        asc: asc == dimmutable ? _value.asc : asc as BreedOrderable?,
        desc: desc == dimmutable ? _value.desc : desc as BreedOrderable?,
        then: then == dimmutable ? _value.then : then as BreedOrder?));
  }
}

abstract class _$BreedOrderCopyWith<O> implements $BreedOrderCopyWith<O> {
  factory _$BreedOrderCopyWith(BreedOrder value, O Function(BreedOrder) then) =
      __$BreedOrderCopyWithImpl<O>;
  O call({BreedOrderable? asc, BreedOrderable? desc, BreedOrder? then});
}

class __$BreedOrderCopyWithImpl<O> extends _$BreedOrderCopyWithImpl<O>
    implements _$BreedOrderCopyWith<O> {
  __$BreedOrderCopyWithImpl(BreedOrder _value, O Function(BreedOrder) _then)
      : super(_value, (v) => _then(v));

  @override
  BreedOrder get _value => super._value;

  @override
  O call(
      {Object? asc = dimmutable,
      Object? desc = dimmutable,
      Object? then = dimmutable}) {
    return _then(BreedOrder(
        asc: asc == dimmutable ? _value.asc : asc as BreedOrderable?,
        desc: desc == dimmutable ? _value.desc : desc as BreedOrderable?,
        then: then == dimmutable ? _value.then : then as BreedOrder?));
  }
}

@JsonSerializable()
class EnergyPointRef {
  final String? id;

  final PointRef? pont;

  final List<BreedRef>? breeds;

  @JsonKey(ignore: true)
  _$EnergyPointRefCopyWith<EnergyPointRef> get copyWith =>
      __$EnergyPointRefCopyWithImpl<EnergyPointRef>(this, IdentityFn);

  const EnergyPointRef({this.id, this.pont, this.breeds});

  factory EnergyPointRef.fromJson(Map<String, dynamic> json) =>
      _$EnergyPointRefFromJson(json);

  Map<String, dynamic> toJson() => _$EnergyPointRefToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is EnergyPointRef &&
        o.id == id &&
        o.pont == pont &&
        o.breeds == breeds;
  }

  @override
  int get hashCode => id.hashCode ^ pont.hashCode ^ breeds.hashCode;

  @override
  String toString() =>
      "EnergyPointRef(id: ${this.id}, pont: ${this.pont}, breeds: ${this.breeds})";
}

abstract class $EnergyPointRefCopyWith<O> {
  factory $EnergyPointRefCopyWith(
          EnergyPointRef value, O Function(EnergyPointRef) then) =
      _$EnergyPointRefCopyWithImpl<O>;
  O call({String? id, PointRef? pont, List<BreedRef>? breeds});
}

class _$EnergyPointRefCopyWithImpl<O> implements $EnergyPointRefCopyWith<O> {
  final EnergyPointRef _value;
  final O Function(EnergyPointRef) _then;
  _$EnergyPointRefCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? id = dimmutable,
      Object? pont = dimmutable,
      Object? breeds = dimmutable}) {
    return _then(_value.copyWith(
        id: id == dimmutable ? _value.id : id as String?,
        pont: pont == dimmutable ? _value.pont : pont as PointRef?,
        breeds:
            breeds == dimmutable ? _value.breeds : breeds as List<BreedRef>?));
  }
}

abstract class _$EnergyPointRefCopyWith<O>
    implements $EnergyPointRefCopyWith<O> {
  factory _$EnergyPointRefCopyWith(
          EnergyPointRef value, O Function(EnergyPointRef) then) =
      __$EnergyPointRefCopyWithImpl<O>;
  O call({String? id, PointRef? pont, List<BreedRef>? breeds});
}

class __$EnergyPointRefCopyWithImpl<O> extends _$EnergyPointRefCopyWithImpl<O>
    implements _$EnergyPointRefCopyWith<O> {
  __$EnergyPointRefCopyWithImpl(
      EnergyPointRef _value, O Function(EnergyPointRef) _then)
      : super(_value, (v) => _then(v));

  @override
  EnergyPointRef get _value => super._value;

  @override
  O call(
      {Object? id = dimmutable,
      Object? pont = dimmutable,
      Object? breeds = dimmutable}) {
    return _then(EnergyPointRef(
        id: id == dimmutable ? _value.id : id as String?,
        pont: pont == dimmutable ? _value.pont : pont as PointRef?,
        breeds:
            breeds == dimmutable ? _value.breeds : breeds as List<BreedRef>?));
  }
}

@JsonSerializable()
class UpdateEnergyPointInput {
  final EnergyPointFilter filter;

  final EnergyPointPatch? set;

  final EnergyPointPatch? remove;

  @JsonKey(ignore: true)
  _$UpdateEnergyPointInputCopyWith<UpdateEnergyPointInput> get copyWith =>
      __$UpdateEnergyPointInputCopyWithImpl<UpdateEnergyPointInput>(
          this, IdentityFn);

  const UpdateEnergyPointInput({required this.filter, this.set, this.remove});

  factory UpdateEnergyPointInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateEnergyPointInputFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateEnergyPointInputToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is UpdateEnergyPointInput &&
        o.filter == filter &&
        o.set == set &&
        o.remove == remove;
  }

  @override
  int get hashCode => filter.hashCode ^ set.hashCode ^ remove.hashCode;

  @override
  String toString() =>
      "UpdateEnergyPointInput(filter: ${this.filter}, set: ${this.set}, remove: ${this.remove})";
}

abstract class $UpdateEnergyPointInputCopyWith<O> {
  factory $UpdateEnergyPointInputCopyWith(UpdateEnergyPointInput value,
          O Function(UpdateEnergyPointInput) then) =
      _$UpdateEnergyPointInputCopyWithImpl<O>;
  O call(
      {EnergyPointFilter filter,
      EnergyPointPatch? set,
      EnergyPointPatch? remove});
}

class _$UpdateEnergyPointInputCopyWithImpl<O>
    implements $UpdateEnergyPointInputCopyWith<O> {
  final UpdateEnergyPointInput _value;
  final O Function(UpdateEnergyPointInput) _then;
  _$UpdateEnergyPointInputCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? filter = dimmutable,
      Object? set = dimmutable,
      Object? remove = dimmutable}) {
    return _then(_value.copyWith(
        filter:
            filter == dimmutable ? _value.filter : filter as EnergyPointFilter,
        set: set == dimmutable ? _value.set : set as EnergyPointPatch?,
        remove: remove == dimmutable
            ? _value.remove
            : remove as EnergyPointPatch?));
  }
}

abstract class _$UpdateEnergyPointInputCopyWith<O>
    implements $UpdateEnergyPointInputCopyWith<O> {
  factory _$UpdateEnergyPointInputCopyWith(UpdateEnergyPointInput value,
          O Function(UpdateEnergyPointInput) then) =
      __$UpdateEnergyPointInputCopyWithImpl<O>;
  O call(
      {EnergyPointFilter filter,
      EnergyPointPatch? set,
      EnergyPointPatch? remove});
}

class __$UpdateEnergyPointInputCopyWithImpl<O>
    extends _$UpdateEnergyPointInputCopyWithImpl<O>
    implements _$UpdateEnergyPointInputCopyWith<O> {
  __$UpdateEnergyPointInputCopyWithImpl(
      UpdateEnergyPointInput _value, O Function(UpdateEnergyPointInput) _then)
      : super(_value, (v) => _then(v));

  @override
  UpdateEnergyPointInput get _value => super._value;

  @override
  O call(
      {Object? filter = dimmutable,
      Object? set = dimmutable,
      Object? remove = dimmutable}) {
    return _then(UpdateEnergyPointInput(
        filter:
            filter == dimmutable ? _value.filter : filter as EnergyPointFilter,
        set: set == dimmutable ? _value.set : set as EnergyPointPatch?,
        remove: remove == dimmutable
            ? _value.remove
            : remove as EnergyPointPatch?));
  }
}

@JsonSerializable()
class IntRange {
  final int min;

  final int max;

  @JsonKey(ignore: true)
  _$IntRangeCopyWith<IntRange> get copyWith =>
      __$IntRangeCopyWithImpl<IntRange>(this, IdentityFn);

  const IntRange({required this.min, required this.max});

  factory IntRange.fromJson(Map<String, dynamic> json) =>
      _$IntRangeFromJson(json);

  Map<String, dynamic> toJson() => _$IntRangeToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is IntRange && o.min == min && o.max == max;
  }

  @override
  int get hashCode => min.hashCode ^ max.hashCode;

  @override
  String toString() => "IntRange(min: ${this.min}, max: ${this.max})";
}

abstract class $IntRangeCopyWith<O> {
  factory $IntRangeCopyWith(IntRange value, O Function(IntRange) then) =
      _$IntRangeCopyWithImpl<O>;
  O call({int min, int max});
}

class _$IntRangeCopyWithImpl<O> implements $IntRangeCopyWith<O> {
  final IntRange _value;
  final O Function(IntRange) _then;
  _$IntRangeCopyWithImpl(this._value, this._then);

  @override
  O call({Object? min = dimmutable, Object? max = dimmutable}) {
    return _then(_value.copyWith(
        min: min == dimmutable ? _value.min : min as int,
        max: max == dimmutable ? _value.max : max as int));
  }
}

abstract class _$IntRangeCopyWith<O> implements $IntRangeCopyWith<O> {
  factory _$IntRangeCopyWith(IntRange value, O Function(IntRange) then) =
      __$IntRangeCopyWithImpl<O>;
  O call({int min, int max});
}

class __$IntRangeCopyWithImpl<O> extends _$IntRangeCopyWithImpl<O>
    implements _$IntRangeCopyWith<O> {
  __$IntRangeCopyWithImpl(IntRange _value, O Function(IntRange) _then)
      : super(_value, (v) => _then(v));

  @override
  IntRange get _value => super._value;

  @override
  O call({Object? min = dimmutable, Object? max = dimmutable}) {
    return _then(IntRange(
        min: min == dimmutable ? _value.min : min as int,
        max: max == dimmutable ? _value.max : max as int));
  }
}

@JsonSerializable()
class WithinFilter {
  final PolygonRef polygon;

  @JsonKey(ignore: true)
  _$WithinFilterCopyWith<WithinFilter> get copyWith =>
      __$WithinFilterCopyWithImpl<WithinFilter>(this, IdentityFn);

  const WithinFilter({required this.polygon});

  factory WithinFilter.fromJson(Map<String, dynamic> json) =>
      _$WithinFilterFromJson(json);

  Map<String, dynamic> toJson() => _$WithinFilterToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is WithinFilter && o.polygon == polygon;
  }

  @override
  int get hashCode => polygon.hashCode;

  @override
  String toString() => "WithinFilter(polygon: ${this.polygon})";
}

abstract class $WithinFilterCopyWith<O> {
  factory $WithinFilterCopyWith(
          WithinFilter value, O Function(WithinFilter) then) =
      _$WithinFilterCopyWithImpl<O>;
  O call({PolygonRef polygon});
}

class _$WithinFilterCopyWithImpl<O> implements $WithinFilterCopyWith<O> {
  final WithinFilter _value;
  final O Function(WithinFilter) _then;
  _$WithinFilterCopyWithImpl(this._value, this._then);

  @override
  O call({Object? polygon = dimmutable}) {
    return _then(_value.copyWith(
        polygon:
            polygon == dimmutable ? _value.polygon : polygon as PolygonRef));
  }
}

abstract class _$WithinFilterCopyWith<O> implements $WithinFilterCopyWith<O> {
  factory _$WithinFilterCopyWith(
          WithinFilter value, O Function(WithinFilter) then) =
      __$WithinFilterCopyWithImpl<O>;
  O call({PolygonRef polygon});
}

class __$WithinFilterCopyWithImpl<O> extends _$WithinFilterCopyWithImpl<O>
    implements _$WithinFilterCopyWith<O> {
  __$WithinFilterCopyWithImpl(
      WithinFilter _value, O Function(WithinFilter) _then)
      : super(_value, (v) => _then(v));

  @override
  WithinFilter get _value => super._value;

  @override
  O call({Object? polygon = dimmutable}) {
    return _then(WithinFilter(
        polygon:
            polygon == dimmutable ? _value.polygon : polygon as PolygonRef));
  }
}

@JsonSerializable()
class DateTimeRange {
  final dynamic min;

  final dynamic max;

  @JsonKey(ignore: true)
  _$DateTimeRangeCopyWith<DateTimeRange> get copyWith =>
      __$DateTimeRangeCopyWithImpl<DateTimeRange>(this, IdentityFn);

  const DateTimeRange({required this.min, required this.max});

  factory DateTimeRange.fromJson(Map<String, dynamic> json) =>
      _$DateTimeRangeFromJson(json);

  Map<String, dynamic> toJson() => _$DateTimeRangeToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is DateTimeRange && o.min == min && o.max == max;
  }

  @override
  int get hashCode => min.hashCode ^ max.hashCode;

  @override
  String toString() => "DateTimeRange(min: ${this.min}, max: ${this.max})";
}

abstract class $DateTimeRangeCopyWith<O> {
  factory $DateTimeRangeCopyWith(
          DateTimeRange value, O Function(DateTimeRange) then) =
      _$DateTimeRangeCopyWithImpl<O>;
  O call({dynamic min, dynamic max});
}

class _$DateTimeRangeCopyWithImpl<O> implements $DateTimeRangeCopyWith<O> {
  final DateTimeRange _value;
  final O Function(DateTimeRange) _then;
  _$DateTimeRangeCopyWithImpl(this._value, this._then);

  @override
  O call({Object? min = dimmutable, Object? max = dimmutable}) {
    return _then(_value.copyWith(
        min: min == dimmutable ? _value.min : min as dynamic,
        max: max == dimmutable ? _value.max : max as dynamic));
  }
}

abstract class _$DateTimeRangeCopyWith<O> implements $DateTimeRangeCopyWith<O> {
  factory _$DateTimeRangeCopyWith(
          DateTimeRange value, O Function(DateTimeRange) then) =
      __$DateTimeRangeCopyWithImpl<O>;
  O call({dynamic min, dynamic max});
}

class __$DateTimeRangeCopyWithImpl<O> extends _$DateTimeRangeCopyWithImpl<O>
    implements _$DateTimeRangeCopyWith<O> {
  __$DateTimeRangeCopyWithImpl(
      DateTimeRange _value, O Function(DateTimeRange) _then)
      : super(_value, (v) => _then(v));

  @override
  DateTimeRange get _value => super._value;

  @override
  O call({Object? min = dimmutable, Object? max = dimmutable}) {
    return _then(DateTimeRange(
        min: min == dimmutable ? _value.min : min as dynamic,
        max: max == dimmutable ? _value.max : max as dynamic));
  }
}

@JsonSerializable()
class AddEnergyPointInput {
  final PointRef pont;

  final List<BreedRef> breeds;

  @JsonKey(ignore: true)
  _$AddEnergyPointInputCopyWith<AddEnergyPointInput> get copyWith =>
      __$AddEnergyPointInputCopyWithImpl<AddEnergyPointInput>(this, IdentityFn);

  const AddEnergyPointInput({required this.pont, required this.breeds});

  factory AddEnergyPointInput.fromJson(Map<String, dynamic> json) =>
      _$AddEnergyPointInputFromJson(json);

  Map<String, dynamic> toJson() => _$AddEnergyPointInputToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is AddEnergyPointInput && o.pont == pont && o.breeds == breeds;
  }

  @override
  int get hashCode => pont.hashCode ^ breeds.hashCode;

  @override
  String toString() =>
      "AddEnergyPointInput(pont: ${this.pont}, breeds: ${this.breeds})";
}

abstract class $AddEnergyPointInputCopyWith<O> {
  factory $AddEnergyPointInputCopyWith(
          AddEnergyPointInput value, O Function(AddEnergyPointInput) then) =
      _$AddEnergyPointInputCopyWithImpl<O>;
  O call({PointRef pont, List<BreedRef> breeds});
}

class _$AddEnergyPointInputCopyWithImpl<O>
    implements $AddEnergyPointInputCopyWith<O> {
  final AddEnergyPointInput _value;
  final O Function(AddEnergyPointInput) _then;
  _$AddEnergyPointInputCopyWithImpl(this._value, this._then);

  @override
  O call({Object? pont = dimmutable, Object? breeds = dimmutable}) {
    return _then(_value.copyWith(
        pont: pont == dimmutable ? _value.pont : pont as PointRef,
        breeds:
            breeds == dimmutable ? _value.breeds : breeds as List<BreedRef>));
  }
}

abstract class _$AddEnergyPointInputCopyWith<O>
    implements $AddEnergyPointInputCopyWith<O> {
  factory _$AddEnergyPointInputCopyWith(
          AddEnergyPointInput value, O Function(AddEnergyPointInput) then) =
      __$AddEnergyPointInputCopyWithImpl<O>;
  O call({PointRef pont, List<BreedRef> breeds});
}

class __$AddEnergyPointInputCopyWithImpl<O>
    extends _$AddEnergyPointInputCopyWithImpl<O>
    implements _$AddEnergyPointInputCopyWith<O> {
  __$AddEnergyPointInputCopyWithImpl(
      AddEnergyPointInput _value, O Function(AddEnergyPointInput) _then)
      : super(_value, (v) => _then(v));

  @override
  AddEnergyPointInput get _value => super._value;

  @override
  O call({Object? pont = dimmutable, Object? breeds = dimmutable}) {
    return _then(AddEnergyPointInput(
        pont: pont == dimmutable ? _value.pont : pont as PointRef,
        breeds:
            breeds == dimmutable ? _value.breeds : breeds as List<BreedRef>));
  }
}

@JsonSerializable()
class DateTimeFilter {
  final dynamic? eq;

  @JsonKey(name: 'in')
  final List<dynamic?>? in_$d;

  final dynamic? le;

  final dynamic? lt;

  final dynamic? ge;

  final dynamic? gt;

  final DateTimeRange? between;

  @JsonKey(ignore: true)
  _$DateTimeFilterCopyWith<DateTimeFilter> get copyWith =>
      __$DateTimeFilterCopyWithImpl<DateTimeFilter>(this, IdentityFn);

  const DateTimeFilter(
      {this.eq, this.in_$d, this.le, this.lt, this.ge, this.gt, this.between});

  factory DateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeFilterFromJson(json);

  Map<String, dynamic> toJson() => _$DateTimeFilterToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is DateTimeFilter &&
        o.eq == eq &&
        o.in_$d == in_$d &&
        o.le == le &&
        o.lt == lt &&
        o.ge == ge &&
        o.gt == gt &&
        o.between == between;
  }

  @override
  int get hashCode =>
      eq.hashCode ^
      in_$d.hashCode ^
      le.hashCode ^
      lt.hashCode ^
      ge.hashCode ^
      gt.hashCode ^
      between.hashCode;

  @override
  String toString() =>
      "DateTimeFilter(eq: ${this.eq}, in_\$d: ${this.in_$d}, le: ${this.le}, lt: ${this.lt}, ge: ${this.ge}, gt: ${this.gt}, between: ${this.between})";
}

abstract class $DateTimeFilterCopyWith<O> {
  factory $DateTimeFilterCopyWith(
          DateTimeFilter value, O Function(DateTimeFilter) then) =
      _$DateTimeFilterCopyWithImpl<O>;
  O call(
      {dynamic? eq,
      List<dynamic?>? in_$d,
      dynamic? le,
      dynamic? lt,
      dynamic? ge,
      dynamic? gt,
      DateTimeRange? between});
}

class _$DateTimeFilterCopyWithImpl<O> implements $DateTimeFilterCopyWith<O> {
  final DateTimeFilter _value;
  final O Function(DateTimeFilter) _then;
  _$DateTimeFilterCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? eq = dimmutable,
      Object? in_$d = dimmutable,
      Object? le = dimmutable,
      Object? lt = dimmutable,
      Object? ge = dimmutable,
      Object? gt = dimmutable,
      Object? between = dimmutable}) {
    return _then(_value.copyWith(
        eq: eq == dimmutable ? _value.eq : eq as dynamic?,
        in_$d: in_$d == dimmutable ? _value.in_$d : in_$d as List<dynamic?>?,
        le: le == dimmutable ? _value.le : le as dynamic?,
        lt: lt == dimmutable ? _value.lt : lt as dynamic?,
        ge: ge == dimmutable ? _value.ge : ge as dynamic?,
        gt: gt == dimmutable ? _value.gt : gt as dynamic?,
        between: between == dimmutable
            ? _value.between
            : between as DateTimeRange?));
  }
}

abstract class _$DateTimeFilterCopyWith<O>
    implements $DateTimeFilterCopyWith<O> {
  factory _$DateTimeFilterCopyWith(
          DateTimeFilter value, O Function(DateTimeFilter) then) =
      __$DateTimeFilterCopyWithImpl<O>;
  O call(
      {dynamic? eq,
      List<dynamic?>? in_$d,
      dynamic? le,
      dynamic? lt,
      dynamic? ge,
      dynamic? gt,
      DateTimeRange? between});
}

class __$DateTimeFilterCopyWithImpl<O> extends _$DateTimeFilterCopyWithImpl<O>
    implements _$DateTimeFilterCopyWith<O> {
  __$DateTimeFilterCopyWithImpl(
      DateTimeFilter _value, O Function(DateTimeFilter) _then)
      : super(_value, (v) => _then(v));

  @override
  DateTimeFilter get _value => super._value;

  @override
  O call(
      {Object? eq = dimmutable,
      Object? in_$d = dimmutable,
      Object? le = dimmutable,
      Object? lt = dimmutable,
      Object? ge = dimmutable,
      Object? gt = dimmutable,
      Object? between = dimmutable}) {
    return _then(DateTimeFilter(
        eq: eq == dimmutable ? _value.eq : eq as dynamic?,
        in_$d: in_$d == dimmutable ? _value.in_$d : in_$d as List<dynamic?>?,
        le: le == dimmutable ? _value.le : le as dynamic?,
        lt: lt == dimmutable ? _value.lt : lt as dynamic?,
        ge: ge == dimmutable ? _value.ge : ge as dynamic?,
        gt: gt == dimmutable ? _value.gt : gt as dynamic?,
        between: between == dimmutable
            ? _value.between
            : between as DateTimeRange?));
  }
}

@JsonSerializable()
class Int64Range {
  final dynamic min;

  final dynamic max;

  @JsonKey(ignore: true)
  _$Int64RangeCopyWith<Int64Range> get copyWith =>
      __$Int64RangeCopyWithImpl<Int64Range>(this, IdentityFn);

  const Int64Range({required this.min, required this.max});

  factory Int64Range.fromJson(Map<String, dynamic> json) =>
      _$Int64RangeFromJson(json);

  Map<String, dynamic> toJson() => _$Int64RangeToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is Int64Range && o.min == min && o.max == max;
  }

  @override
  int get hashCode => min.hashCode ^ max.hashCode;

  @override
  String toString() => "Int64Range(min: ${this.min}, max: ${this.max})";
}

abstract class $Int64RangeCopyWith<O> {
  factory $Int64RangeCopyWith(Int64Range value, O Function(Int64Range) then) =
      _$Int64RangeCopyWithImpl<O>;
  O call({dynamic min, dynamic max});
}

class _$Int64RangeCopyWithImpl<O> implements $Int64RangeCopyWith<O> {
  final Int64Range _value;
  final O Function(Int64Range) _then;
  _$Int64RangeCopyWithImpl(this._value, this._then);

  @override
  O call({Object? min = dimmutable, Object? max = dimmutable}) {
    return _then(_value.copyWith(
        min: min == dimmutable ? _value.min : min as dynamic,
        max: max == dimmutable ? _value.max : max as dynamic));
  }
}

abstract class _$Int64RangeCopyWith<O> implements $Int64RangeCopyWith<O> {
  factory _$Int64RangeCopyWith(Int64Range value, O Function(Int64Range) then) =
      __$Int64RangeCopyWithImpl<O>;
  O call({dynamic min, dynamic max});
}

class __$Int64RangeCopyWithImpl<O> extends _$Int64RangeCopyWithImpl<O>
    implements _$Int64RangeCopyWith<O> {
  __$Int64RangeCopyWithImpl(Int64Range _value, O Function(Int64Range) _then)
      : super(_value, (v) => _then(v));

  @override
  Int64Range get _value => super._value;

  @override
  O call({Object? min = dimmutable, Object? max = dimmutable}) {
    return _then(Int64Range(
        min: min == dimmutable ? _value.min : min as dynamic,
        max: max == dimmutable ? _value.max : max as dynamic));
  }
}

@JsonSerializable()
class PointListRef {
  final List<PointRef> points;

  @JsonKey(ignore: true)
  _$PointListRefCopyWith<PointListRef> get copyWith =>
      __$PointListRefCopyWithImpl<PointListRef>(this, IdentityFn);

  const PointListRef({required this.points});

  factory PointListRef.fromJson(Map<String, dynamic> json) =>
      _$PointListRefFromJson(json);

  Map<String, dynamic> toJson() => _$PointListRefToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is PointListRef && o.points == points;
  }

  @override
  int get hashCode => points.hashCode;

  @override
  String toString() => "PointListRef(points: ${this.points})";
}

abstract class $PointListRefCopyWith<O> {
  factory $PointListRefCopyWith(
          PointListRef value, O Function(PointListRef) then) =
      _$PointListRefCopyWithImpl<O>;
  O call({List<PointRef> points});
}

class _$PointListRefCopyWithImpl<O> implements $PointListRefCopyWith<O> {
  final PointListRef _value;
  final O Function(PointListRef) _then;
  _$PointListRefCopyWithImpl(this._value, this._then);

  @override
  O call({Object? points = dimmutable}) {
    return _then(_value.copyWith(
        points:
            points == dimmutable ? _value.points : points as List<PointRef>));
  }
}

abstract class _$PointListRefCopyWith<O> implements $PointListRefCopyWith<O> {
  factory _$PointListRefCopyWith(
          PointListRef value, O Function(PointListRef) then) =
      __$PointListRefCopyWithImpl<O>;
  O call({List<PointRef> points});
}

class __$PointListRefCopyWithImpl<O> extends _$PointListRefCopyWithImpl<O>
    implements _$PointListRefCopyWith<O> {
  __$PointListRefCopyWithImpl(
      PointListRef _value, O Function(PointListRef) _then)
      : super(_value, (v) => _then(v));

  @override
  PointListRef get _value => super._value;

  @override
  O call({Object? points = dimmutable}) {
    return _then(PointListRef(
        points:
            points == dimmutable ? _value.points : points as List<PointRef>));
  }
}

@JsonSerializable()
class PolygonGeoFilter {
  final NearFilter? near;

  final WithinFilter? within;

  final ContainsFilter? contains;

  final IntersectsFilter? intersects;

  @JsonKey(ignore: true)
  _$PolygonGeoFilterCopyWith<PolygonGeoFilter> get copyWith =>
      __$PolygonGeoFilterCopyWithImpl<PolygonGeoFilter>(this, IdentityFn);

  const PolygonGeoFilter(
      {this.near, this.within, this.contains, this.intersects});

  factory PolygonGeoFilter.fromJson(Map<String, dynamic> json) =>
      _$PolygonGeoFilterFromJson(json);

  Map<String, dynamic> toJson() => _$PolygonGeoFilterToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is PolygonGeoFilter &&
        o.near == near &&
        o.within == within &&
        o.contains == contains &&
        o.intersects == intersects;
  }

  @override
  int get hashCode =>
      near.hashCode ^ within.hashCode ^ contains.hashCode ^ intersects.hashCode;

  @override
  String toString() =>
      "PolygonGeoFilter(near: ${this.near}, within: ${this.within}, contains: ${this.contains}, intersects: ${this.intersects})";
}

abstract class $PolygonGeoFilterCopyWith<O> {
  factory $PolygonGeoFilterCopyWith(
          PolygonGeoFilter value, O Function(PolygonGeoFilter) then) =
      _$PolygonGeoFilterCopyWithImpl<O>;
  O call(
      {NearFilter? near,
      WithinFilter? within,
      ContainsFilter? contains,
      IntersectsFilter? intersects});
}

class _$PolygonGeoFilterCopyWithImpl<O>
    implements $PolygonGeoFilterCopyWith<O> {
  final PolygonGeoFilter _value;
  final O Function(PolygonGeoFilter) _then;
  _$PolygonGeoFilterCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? near = dimmutable,
      Object? within = dimmutable,
      Object? contains = dimmutable,
      Object? intersects = dimmutable}) {
    return _then(_value.copyWith(
        near: near == dimmutable ? _value.near : near as NearFilter?,
        within: within == dimmutable ? _value.within : within as WithinFilter?,
        contains: contains == dimmutable
            ? _value.contains
            : contains as ContainsFilter?,
        intersects: intersects == dimmutable
            ? _value.intersects
            : intersects as IntersectsFilter?));
  }
}

abstract class _$PolygonGeoFilterCopyWith<O>
    implements $PolygonGeoFilterCopyWith<O> {
  factory _$PolygonGeoFilterCopyWith(
          PolygonGeoFilter value, O Function(PolygonGeoFilter) then) =
      __$PolygonGeoFilterCopyWithImpl<O>;
  O call(
      {NearFilter? near,
      WithinFilter? within,
      ContainsFilter? contains,
      IntersectsFilter? intersects});
}

class __$PolygonGeoFilterCopyWithImpl<O>
    extends _$PolygonGeoFilterCopyWithImpl<O>
    implements _$PolygonGeoFilterCopyWith<O> {
  __$PolygonGeoFilterCopyWithImpl(
      PolygonGeoFilter _value, O Function(PolygonGeoFilter) _then)
      : super(_value, (v) => _then(v));

  @override
  PolygonGeoFilter get _value => super._value;

  @override
  O call(
      {Object? near = dimmutable,
      Object? within = dimmutable,
      Object? contains = dimmutable,
      Object? intersects = dimmutable}) {
    return _then(PolygonGeoFilter(
        near: near == dimmutable ? _value.near : near as NearFilter?,
        within: within == dimmutable ? _value.within : within as WithinFilter?,
        contains: contains == dimmutable
            ? _value.contains
            : contains as ContainsFilter?,
        intersects: intersects == dimmutable
            ? _value.intersects
            : intersects as IntersectsFilter?));
  }
}

@JsonSerializable()
class GenerateQueryParams {
  final bool? get;

  final bool? query;

  final bool? password;

  final bool? aggregate;

  @JsonKey(ignore: true)
  _$GenerateQueryParamsCopyWith<GenerateQueryParams> get copyWith =>
      __$GenerateQueryParamsCopyWithImpl<GenerateQueryParams>(this, IdentityFn);

  const GenerateQueryParams(
      {this.get, this.query, this.password, this.aggregate});

  factory GenerateQueryParams.fromJson(Map<String, dynamic> json) =>
      _$GenerateQueryParamsFromJson(json);

  Map<String, dynamic> toJson() => _$GenerateQueryParamsToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is GenerateQueryParams &&
        o.get == get &&
        o.query == query &&
        o.password == password &&
        o.aggregate == aggregate;
  }

  @override
  int get hashCode =>
      get.hashCode ^ query.hashCode ^ password.hashCode ^ aggregate.hashCode;

  @override
  String toString() =>
      "GenerateQueryParams(get: ${this.get}, query: ${this.query}, password: ${this.password}, aggregate: ${this.aggregate})";
}

abstract class $GenerateQueryParamsCopyWith<O> {
  factory $GenerateQueryParamsCopyWith(
          GenerateQueryParams value, O Function(GenerateQueryParams) then) =
      _$GenerateQueryParamsCopyWithImpl<O>;
  O call({bool? get, bool? query, bool? password, bool? aggregate});
}

class _$GenerateQueryParamsCopyWithImpl<O>
    implements $GenerateQueryParamsCopyWith<O> {
  final GenerateQueryParams _value;
  final O Function(GenerateQueryParams) _then;
  _$GenerateQueryParamsCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? get = dimmutable,
      Object? query = dimmutable,
      Object? password = dimmutable,
      Object? aggregate = dimmutable}) {
    return _then(_value.copyWith(
        get: get == dimmutable ? _value.get : get as bool?,
        query: query == dimmutable ? _value.query : query as bool?,
        password: password == dimmutable ? _value.password : password as bool?,
        aggregate:
            aggregate == dimmutable ? _value.aggregate : aggregate as bool?));
  }
}

abstract class _$GenerateQueryParamsCopyWith<O>
    implements $GenerateQueryParamsCopyWith<O> {
  factory _$GenerateQueryParamsCopyWith(
          GenerateQueryParams value, O Function(GenerateQueryParams) then) =
      __$GenerateQueryParamsCopyWithImpl<O>;
  O call({bool? get, bool? query, bool? password, bool? aggregate});
}

class __$GenerateQueryParamsCopyWithImpl<O>
    extends _$GenerateQueryParamsCopyWithImpl<O>
    implements _$GenerateQueryParamsCopyWith<O> {
  __$GenerateQueryParamsCopyWithImpl(
      GenerateQueryParams _value, O Function(GenerateQueryParams) _then)
      : super(_value, (v) => _then(v));

  @override
  GenerateQueryParams get _value => super._value;

  @override
  O call(
      {Object? get = dimmutable,
      Object? query = dimmutable,
      Object? password = dimmutable,
      Object? aggregate = dimmutable}) {
    return _then(GenerateQueryParams(
        get: get == dimmutable ? _value.get : get as bool?,
        query: query == dimmutable ? _value.query : query as bool?,
        password: password == dimmutable ? _value.password : password as bool?,
        aggregate:
            aggregate == dimmutable ? _value.aggregate : aggregate as bool?));
  }
}

@JsonSerializable()
class EnergyPointPatch {
  final PointRef? pont;

  final List<BreedRef>? breeds;

  @JsonKey(ignore: true)
  _$EnergyPointPatchCopyWith<EnergyPointPatch> get copyWith =>
      __$EnergyPointPatchCopyWithImpl<EnergyPointPatch>(this, IdentityFn);

  const EnergyPointPatch({this.pont, this.breeds});

  factory EnergyPointPatch.fromJson(Map<String, dynamic> json) =>
      _$EnergyPointPatchFromJson(json);

  Map<String, dynamic> toJson() => _$EnergyPointPatchToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is EnergyPointPatch && o.pont == pont && o.breeds == breeds;
  }

  @override
  int get hashCode => pont.hashCode ^ breeds.hashCode;

  @override
  String toString() =>
      "EnergyPointPatch(pont: ${this.pont}, breeds: ${this.breeds})";
}

abstract class $EnergyPointPatchCopyWith<O> {
  factory $EnergyPointPatchCopyWith(
          EnergyPointPatch value, O Function(EnergyPointPatch) then) =
      _$EnergyPointPatchCopyWithImpl<O>;
  O call({PointRef? pont, List<BreedRef>? breeds});
}

class _$EnergyPointPatchCopyWithImpl<O>
    implements $EnergyPointPatchCopyWith<O> {
  final EnergyPointPatch _value;
  final O Function(EnergyPointPatch) _then;
  _$EnergyPointPatchCopyWithImpl(this._value, this._then);

  @override
  O call({Object? pont = dimmutable, Object? breeds = dimmutable}) {
    return _then(_value.copyWith(
        pont: pont == dimmutable ? _value.pont : pont as PointRef?,
        breeds:
            breeds == dimmutable ? _value.breeds : breeds as List<BreedRef>?));
  }
}

abstract class _$EnergyPointPatchCopyWith<O>
    implements $EnergyPointPatchCopyWith<O> {
  factory _$EnergyPointPatchCopyWith(
          EnergyPointPatch value, O Function(EnergyPointPatch) then) =
      __$EnergyPointPatchCopyWithImpl<O>;
  O call({PointRef? pont, List<BreedRef>? breeds});
}

class __$EnergyPointPatchCopyWithImpl<O>
    extends _$EnergyPointPatchCopyWithImpl<O>
    implements _$EnergyPointPatchCopyWith<O> {
  __$EnergyPointPatchCopyWithImpl(
      EnergyPointPatch _value, O Function(EnergyPointPatch) _then)
      : super(_value, (v) => _then(v));

  @override
  EnergyPointPatch get _value => super._value;

  @override
  O call({Object? pont = dimmutable, Object? breeds = dimmutable}) {
    return _then(EnergyPointPatch(
        pont: pont == dimmutable ? _value.pont : pont as PointRef?,
        breeds:
            breeds == dimmutable ? _value.breeds : breeds as List<BreedRef>?));
  }
}

@JsonSerializable()
class AuthRule {
  final List<AuthRule?>? and;

  final List<AuthRule?>? or;

  final AuthRule? not;

  final String? rule;

  @JsonKey(ignore: true)
  _$AuthRuleCopyWith<AuthRule> get copyWith =>
      __$AuthRuleCopyWithImpl<AuthRule>(this, IdentityFn);

  const AuthRule({this.and, this.or, this.not, this.rule});

  factory AuthRule.fromJson(Map<String, dynamic> json) =>
      _$AuthRuleFromJson(json);

  Map<String, dynamic> toJson() => _$AuthRuleToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is AuthRule &&
        o.and == and &&
        o.or == or &&
        o.not == not &&
        o.rule == rule;
  }

  @override
  int get hashCode => and.hashCode ^ or.hashCode ^ not.hashCode ^ rule.hashCode;

  @override
  String toString() =>
      "AuthRule(and: ${this.and}, or: ${this.or}, not: ${this.not}, rule: ${this.rule})";
}

abstract class $AuthRuleCopyWith<O> {
  factory $AuthRuleCopyWith(AuthRule value, O Function(AuthRule) then) =
      _$AuthRuleCopyWithImpl<O>;
  O call(
      {List<AuthRule?>? and, List<AuthRule?>? or, AuthRule? not, String? rule});
}

class _$AuthRuleCopyWithImpl<O> implements $AuthRuleCopyWith<O> {
  final AuthRule _value;
  final O Function(AuthRule) _then;
  _$AuthRuleCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? and = dimmutable,
      Object? or = dimmutable,
      Object? not = dimmutable,
      Object? rule = dimmutable}) {
    return _then(_value.copyWith(
        and: and == dimmutable ? _value.and : and as List<AuthRule?>?,
        or: or == dimmutable ? _value.or : or as List<AuthRule?>?,
        not: not == dimmutable ? _value.not : not as AuthRule?,
        rule: rule == dimmutable ? _value.rule : rule as String?));
  }
}

abstract class _$AuthRuleCopyWith<O> implements $AuthRuleCopyWith<O> {
  factory _$AuthRuleCopyWith(AuthRule value, O Function(AuthRule) then) =
      __$AuthRuleCopyWithImpl<O>;
  O call(
      {List<AuthRule?>? and, List<AuthRule?>? or, AuthRule? not, String? rule});
}

class __$AuthRuleCopyWithImpl<O> extends _$AuthRuleCopyWithImpl<O>
    implements _$AuthRuleCopyWith<O> {
  __$AuthRuleCopyWithImpl(AuthRule _value, O Function(AuthRule) _then)
      : super(_value, (v) => _then(v));

  @override
  AuthRule get _value => super._value;

  @override
  O call(
      {Object? and = dimmutable,
      Object? or = dimmutable,
      Object? not = dimmutable,
      Object? rule = dimmutable}) {
    return _then(AuthRule(
        and: and == dimmutable ? _value.and : and as List<AuthRule?>?,
        or: or == dimmutable ? _value.or : or as List<AuthRule?>?,
        not: not == dimmutable ? _value.not : not as AuthRule?,
        rule: rule == dimmutable ? _value.rule : rule as String?));
  }
}

@JsonSerializable()
class StringRange {
  final String min;

  final String max;

  @JsonKey(ignore: true)
  _$StringRangeCopyWith<StringRange> get copyWith =>
      __$StringRangeCopyWithImpl<StringRange>(this, IdentityFn);

  const StringRange({required this.min, required this.max});

  factory StringRange.fromJson(Map<String, dynamic> json) =>
      _$StringRangeFromJson(json);

  Map<String, dynamic> toJson() => _$StringRangeToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is StringRange && o.min == min && o.max == max;
  }

  @override
  int get hashCode => min.hashCode ^ max.hashCode;

  @override
  String toString() => "StringRange(min: ${this.min}, max: ${this.max})";
}

abstract class $StringRangeCopyWith<O> {
  factory $StringRangeCopyWith(
          StringRange value, O Function(StringRange) then) =
      _$StringRangeCopyWithImpl<O>;
  O call({String min, String max});
}

class _$StringRangeCopyWithImpl<O> implements $StringRangeCopyWith<O> {
  final StringRange _value;
  final O Function(StringRange) _then;
  _$StringRangeCopyWithImpl(this._value, this._then);

  @override
  O call({Object? min = dimmutable, Object? max = dimmutable}) {
    return _then(_value.copyWith(
        min: min == dimmutable ? _value.min : min as String,
        max: max == dimmutable ? _value.max : max as String));
  }
}

abstract class _$StringRangeCopyWith<O> implements $StringRangeCopyWith<O> {
  factory _$StringRangeCopyWith(
          StringRange value, O Function(StringRange) then) =
      __$StringRangeCopyWithImpl<O>;
  O call({String min, String max});
}

class __$StringRangeCopyWithImpl<O> extends _$StringRangeCopyWithImpl<O>
    implements _$StringRangeCopyWith<O> {
  __$StringRangeCopyWithImpl(StringRange _value, O Function(StringRange) _then)
      : super(_value, (v) => _then(v));

  @override
  StringRange get _value => super._value;

  @override
  O call({Object? min = dimmutable, Object? max = dimmutable}) {
    return _then(StringRange(
        min: min == dimmutable ? _value.min : min as String,
        max: max == dimmutable ? _value.max : max as String));
  }
}

@JsonSerializable()
class MultiPolygonRef {
  final List<PolygonRef> polygons;

  @JsonKey(ignore: true)
  _$MultiPolygonRefCopyWith<MultiPolygonRef> get copyWith =>
      __$MultiPolygonRefCopyWithImpl<MultiPolygonRef>(this, IdentityFn);

  const MultiPolygonRef({required this.polygons});

  factory MultiPolygonRef.fromJson(Map<String, dynamic> json) =>
      _$MultiPolygonRefFromJson(json);

  Map<String, dynamic> toJson() => _$MultiPolygonRefToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is MultiPolygonRef && o.polygons == polygons;
  }

  @override
  int get hashCode => polygons.hashCode;

  @override
  String toString() => "MultiPolygonRef(polygons: ${this.polygons})";
}

abstract class $MultiPolygonRefCopyWith<O> {
  factory $MultiPolygonRefCopyWith(
          MultiPolygonRef value, O Function(MultiPolygonRef) then) =
      _$MultiPolygonRefCopyWithImpl<O>;
  O call({List<PolygonRef> polygons});
}

class _$MultiPolygonRefCopyWithImpl<O> implements $MultiPolygonRefCopyWith<O> {
  final MultiPolygonRef _value;
  final O Function(MultiPolygonRef) _then;
  _$MultiPolygonRefCopyWithImpl(this._value, this._then);

  @override
  O call({Object? polygons = dimmutable}) {
    return _then(_value.copyWith(
        polygons: polygons == dimmutable
            ? _value.polygons
            : polygons as List<PolygonRef>));
  }
}

abstract class _$MultiPolygonRefCopyWith<O>
    implements $MultiPolygonRefCopyWith<O> {
  factory _$MultiPolygonRefCopyWith(
          MultiPolygonRef value, O Function(MultiPolygonRef) then) =
      __$MultiPolygonRefCopyWithImpl<O>;
  O call({List<PolygonRef> polygons});
}

class __$MultiPolygonRefCopyWithImpl<O> extends _$MultiPolygonRefCopyWithImpl<O>
    implements _$MultiPolygonRefCopyWith<O> {
  __$MultiPolygonRefCopyWithImpl(
      MultiPolygonRef _value, O Function(MultiPolygonRef) _then)
      : super(_value, (v) => _then(v));

  @override
  MultiPolygonRef get _value => super._value;

  @override
  O call({Object? polygons = dimmutable}) {
    return _then(MultiPolygonRef(
        polygons: polygons == dimmutable
            ? _value.polygons
            : polygons as List<PolygonRef>));
  }
}

@JsonSerializable()
class Int64Filter {
  final dynamic? eq;

  @JsonKey(name: 'in')
  final List<dynamic?>? in_$d;

  final dynamic? le;

  final dynamic? lt;

  final dynamic? ge;

  final dynamic? gt;

  final Int64Range? between;

  @JsonKey(ignore: true)
  _$Int64FilterCopyWith<Int64Filter> get copyWith =>
      __$Int64FilterCopyWithImpl<Int64Filter>(this, IdentityFn);

  const Int64Filter(
      {this.eq, this.in_$d, this.le, this.lt, this.ge, this.gt, this.between});

  factory Int64Filter.fromJson(Map<String, dynamic> json) =>
      _$Int64FilterFromJson(json);

  Map<String, dynamic> toJson() => _$Int64FilterToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is Int64Filter &&
        o.eq == eq &&
        o.in_$d == in_$d &&
        o.le == le &&
        o.lt == lt &&
        o.ge == ge &&
        o.gt == gt &&
        o.between == between;
  }

  @override
  int get hashCode =>
      eq.hashCode ^
      in_$d.hashCode ^
      le.hashCode ^
      lt.hashCode ^
      ge.hashCode ^
      gt.hashCode ^
      between.hashCode;

  @override
  String toString() =>
      "Int64Filter(eq: ${this.eq}, in_\$d: ${this.in_$d}, le: ${this.le}, lt: ${this.lt}, ge: ${this.ge}, gt: ${this.gt}, between: ${this.between})";
}

abstract class $Int64FilterCopyWith<O> {
  factory $Int64FilterCopyWith(
          Int64Filter value, O Function(Int64Filter) then) =
      _$Int64FilterCopyWithImpl<O>;
  O call(
      {dynamic? eq,
      List<dynamic?>? in_$d,
      dynamic? le,
      dynamic? lt,
      dynamic? ge,
      dynamic? gt,
      Int64Range? between});
}

class _$Int64FilterCopyWithImpl<O> implements $Int64FilterCopyWith<O> {
  final Int64Filter _value;
  final O Function(Int64Filter) _then;
  _$Int64FilterCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? eq = dimmutable,
      Object? in_$d = dimmutable,
      Object? le = dimmutable,
      Object? lt = dimmutable,
      Object? ge = dimmutable,
      Object? gt = dimmutable,
      Object? between = dimmutable}) {
    return _then(_value.copyWith(
        eq: eq == dimmutable ? _value.eq : eq as dynamic?,
        in_$d: in_$d == dimmutable ? _value.in_$d : in_$d as List<dynamic?>?,
        le: le == dimmutable ? _value.le : le as dynamic?,
        lt: lt == dimmutable ? _value.lt : lt as dynamic?,
        ge: ge == dimmutable ? _value.ge : ge as dynamic?,
        gt: gt == dimmutable ? _value.gt : gt as dynamic?,
        between:
            between == dimmutable ? _value.between : between as Int64Range?));
  }
}

abstract class _$Int64FilterCopyWith<O> implements $Int64FilterCopyWith<O> {
  factory _$Int64FilterCopyWith(
          Int64Filter value, O Function(Int64Filter) then) =
      __$Int64FilterCopyWithImpl<O>;
  O call(
      {dynamic? eq,
      List<dynamic?>? in_$d,
      dynamic? le,
      dynamic? lt,
      dynamic? ge,
      dynamic? gt,
      Int64Range? between});
}

class __$Int64FilterCopyWithImpl<O> extends _$Int64FilterCopyWithImpl<O>
    implements _$Int64FilterCopyWith<O> {
  __$Int64FilterCopyWithImpl(Int64Filter _value, O Function(Int64Filter) _then)
      : super(_value, (v) => _then(v));

  @override
  Int64Filter get _value => super._value;

  @override
  O call(
      {Object? eq = dimmutable,
      Object? in_$d = dimmutable,
      Object? le = dimmutable,
      Object? lt = dimmutable,
      Object? ge = dimmutable,
      Object? gt = dimmutable,
      Object? between = dimmutable}) {
    return _then(Int64Filter(
        eq: eq == dimmutable ? _value.eq : eq as dynamic?,
        in_$d: in_$d == dimmutable ? _value.in_$d : in_$d as List<dynamic?>?,
        le: le == dimmutable ? _value.le : le as dynamic?,
        lt: lt == dimmutable ? _value.lt : lt as dynamic?,
        ge: ge == dimmutable ? _value.ge : ge as dynamic?,
        gt: gt == dimmutable ? _value.gt : gt as dynamic?,
        between:
            between == dimmutable ? _value.between : between as Int64Range?));
  }
}

@JsonSerializable()
class StringHashFilter {
  final String? eq;

  @JsonKey(name: 'in')
  final List<String?>? in_$d;

  @JsonKey(ignore: true)
  _$StringHashFilterCopyWith<StringHashFilter> get copyWith =>
      __$StringHashFilterCopyWithImpl<StringHashFilter>(this, IdentityFn);

  const StringHashFilter({this.eq, this.in_$d});

  factory StringHashFilter.fromJson(Map<String, dynamic> json) =>
      _$StringHashFilterFromJson(json);

  Map<String, dynamic> toJson() => _$StringHashFilterToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is StringHashFilter && o.eq == eq && o.in_$d == in_$d;
  }

  @override
  int get hashCode => eq.hashCode ^ in_$d.hashCode;

  @override
  String toString() =>
      "StringHashFilter(eq: ${this.eq}, in_\$d: ${this.in_$d})";
}

abstract class $StringHashFilterCopyWith<O> {
  factory $StringHashFilterCopyWith(
          StringHashFilter value, O Function(StringHashFilter) then) =
      _$StringHashFilterCopyWithImpl<O>;
  O call({String? eq, List<String?>? in_$d});
}

class _$StringHashFilterCopyWithImpl<O>
    implements $StringHashFilterCopyWith<O> {
  final StringHashFilter _value;
  final O Function(StringHashFilter) _then;
  _$StringHashFilterCopyWithImpl(this._value, this._then);

  @override
  O call({Object? eq = dimmutable, Object? in_$d = dimmutable}) {
    return _then(_value.copyWith(
        eq: eq == dimmutable ? _value.eq : eq as String?,
        in_$d: in_$d == dimmutable ? _value.in_$d : in_$d as List<String?>?));
  }
}

abstract class _$StringHashFilterCopyWith<O>
    implements $StringHashFilterCopyWith<O> {
  factory _$StringHashFilterCopyWith(
          StringHashFilter value, O Function(StringHashFilter) then) =
      __$StringHashFilterCopyWithImpl<O>;
  O call({String? eq, List<String?>? in_$d});
}

class __$StringHashFilterCopyWithImpl<O>
    extends _$StringHashFilterCopyWithImpl<O>
    implements _$StringHashFilterCopyWith<O> {
  __$StringHashFilterCopyWithImpl(
      StringHashFilter _value, O Function(StringHashFilter) _then)
      : super(_value, (v) => _then(v));

  @override
  StringHashFilter get _value => super._value;

  @override
  O call({Object? eq = dimmutable, Object? in_$d = dimmutable}) {
    return _then(StringHashFilter(
        eq: eq == dimmutable ? _value.eq : eq as String?,
        in_$d: in_$d == dimmutable ? _value.in_$d : in_$d as List<String?>?));
  }
}

@JsonSerializable()
class StringFullTextFilter {
  final String? alloftext;

  final String? anyoftext;

  @JsonKey(ignore: true)
  _$StringFullTextFilterCopyWith<StringFullTextFilter> get copyWith =>
      __$StringFullTextFilterCopyWithImpl<StringFullTextFilter>(
          this, IdentityFn);

  const StringFullTextFilter({this.alloftext, this.anyoftext});

  factory StringFullTextFilter.fromJson(Map<String, dynamic> json) =>
      _$StringFullTextFilterFromJson(json);

  Map<String, dynamic> toJson() => _$StringFullTextFilterToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is StringFullTextFilter &&
        o.alloftext == alloftext &&
        o.anyoftext == anyoftext;
  }

  @override
  int get hashCode => alloftext.hashCode ^ anyoftext.hashCode;

  @override
  String toString() =>
      "StringFullTextFilter(alloftext: ${this.alloftext}, anyoftext: ${this.anyoftext})";
}

abstract class $StringFullTextFilterCopyWith<O> {
  factory $StringFullTextFilterCopyWith(
          StringFullTextFilter value, O Function(StringFullTextFilter) then) =
      _$StringFullTextFilterCopyWithImpl<O>;
  O call({String? alloftext, String? anyoftext});
}

class _$StringFullTextFilterCopyWithImpl<O>
    implements $StringFullTextFilterCopyWith<O> {
  final StringFullTextFilter _value;
  final O Function(StringFullTextFilter) _then;
  _$StringFullTextFilterCopyWithImpl(this._value, this._then);

  @override
  O call({Object? alloftext = dimmutable, Object? anyoftext = dimmutable}) {
    return _then(_value.copyWith(
        alloftext:
            alloftext == dimmutable ? _value.alloftext : alloftext as String?,
        anyoftext:
            anyoftext == dimmutable ? _value.anyoftext : anyoftext as String?));
  }
}

abstract class _$StringFullTextFilterCopyWith<O>
    implements $StringFullTextFilterCopyWith<O> {
  factory _$StringFullTextFilterCopyWith(
          StringFullTextFilter value, O Function(StringFullTextFilter) then) =
      __$StringFullTextFilterCopyWithImpl<O>;
  O call({String? alloftext, String? anyoftext});
}

class __$StringFullTextFilterCopyWithImpl<O>
    extends _$StringFullTextFilterCopyWithImpl<O>
    implements _$StringFullTextFilterCopyWith<O> {
  __$StringFullTextFilterCopyWithImpl(
      StringFullTextFilter _value, O Function(StringFullTextFilter) _then)
      : super(_value, (v) => _then(v));

  @override
  StringFullTextFilter get _value => super._value;

  @override
  O call({Object? alloftext = dimmutable, Object? anyoftext = dimmutable}) {
    return _then(StringFullTextFilter(
        alloftext:
            alloftext == dimmutable ? _value.alloftext : alloftext as String?,
        anyoftext:
            anyoftext == dimmutable ? _value.anyoftext : anyoftext as String?));
  }
}

@JsonSerializable()
class BreedRef {
  final String? name;

  final String? info;

  final List<String>? images;

  final List<EnergyPointRef>? energyPoints;

  @JsonKey(ignore: true)
  _$BreedRefCopyWith<BreedRef> get copyWith =>
      __$BreedRefCopyWithImpl<BreedRef>(this, IdentityFn);

  const BreedRef({this.name, this.info, this.images, this.energyPoints});

  factory BreedRef.fromJson(Map<String, dynamic> json) =>
      _$BreedRefFromJson(json);

  Map<String, dynamic> toJson() => _$BreedRefToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is BreedRef &&
        o.name == name &&
        o.info == info &&
        o.images == images &&
        o.energyPoints == energyPoints;
  }

  @override
  int get hashCode =>
      name.hashCode ^ info.hashCode ^ images.hashCode ^ energyPoints.hashCode;

  @override
  String toString() =>
      "BreedRef(name: ${this.name}, info: ${this.info}, images: ${this.images}, energyPoints: ${this.energyPoints})";
}

abstract class $BreedRefCopyWith<O> {
  factory $BreedRefCopyWith(BreedRef value, O Function(BreedRef) then) =
      _$BreedRefCopyWithImpl<O>;
  O call(
      {String? name,
      String? info,
      List<String>? images,
      List<EnergyPointRef>? energyPoints});
}

class _$BreedRefCopyWithImpl<O> implements $BreedRefCopyWith<O> {
  final BreedRef _value;
  final O Function(BreedRef) _then;
  _$BreedRefCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? name = dimmutable,
      Object? info = dimmutable,
      Object? images = dimmutable,
      Object? energyPoints = dimmutable}) {
    return _then(_value.copyWith(
        name: name == dimmutable ? _value.name : name as String?,
        info: info == dimmutable ? _value.info : info as String?,
        images: images == dimmutable ? _value.images : images as List<String>?,
        energyPoints: energyPoints == dimmutable
            ? _value.energyPoints
            : energyPoints as List<EnergyPointRef>?));
  }
}

abstract class _$BreedRefCopyWith<O> implements $BreedRefCopyWith<O> {
  factory _$BreedRefCopyWith(BreedRef value, O Function(BreedRef) then) =
      __$BreedRefCopyWithImpl<O>;
  O call(
      {String? name,
      String? info,
      List<String>? images,
      List<EnergyPointRef>? energyPoints});
}

class __$BreedRefCopyWithImpl<O> extends _$BreedRefCopyWithImpl<O>
    implements _$BreedRefCopyWith<O> {
  __$BreedRefCopyWithImpl(BreedRef _value, O Function(BreedRef) _then)
      : super(_value, (v) => _then(v));

  @override
  BreedRef get _value => super._value;

  @override
  O call(
      {Object? name = dimmutable,
      Object? info = dimmutable,
      Object? images = dimmutable,
      Object? energyPoints = dimmutable}) {
    return _then(BreedRef(
        name: name == dimmutable ? _value.name : name as String?,
        info: info == dimmutable ? _value.info : info as String?,
        images: images == dimmutable ? _value.images : images as List<String>?,
        energyPoints: energyPoints == dimmutable
            ? _value.energyPoints
            : energyPoints as List<EnergyPointRef>?));
  }
}

@JsonSerializable()
class EnergyPointFilter {
  final List<String>? id;

  final List<EnergyPointHasFilter?>? has;

  final List<EnergyPointFilter?>? and;

  final List<EnergyPointFilter?>? or;

  final EnergyPointFilter? not;

  @JsonKey(ignore: true)
  _$EnergyPointFilterCopyWith<EnergyPointFilter> get copyWith =>
      __$EnergyPointFilterCopyWithImpl<EnergyPointFilter>(this, IdentityFn);

  const EnergyPointFilter({this.id, this.has, this.and, this.or, this.not});

  factory EnergyPointFilter.fromJson(Map<String, dynamic> json) =>
      _$EnergyPointFilterFromJson(json);

  Map<String, dynamic> toJson() => _$EnergyPointFilterToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is EnergyPointFilter &&
        o.id == id &&
        o.has == has &&
        o.and == and &&
        o.or == or &&
        o.not == not;
  }

  @override
  int get hashCode =>
      id.hashCode ^ has.hashCode ^ and.hashCode ^ or.hashCode ^ not.hashCode;

  @override
  String toString() =>
      "EnergyPointFilter(id: ${this.id}, has: ${this.has}, and: ${this.and}, or: ${this.or}, not: ${this.not})";
}

abstract class $EnergyPointFilterCopyWith<O> {
  factory $EnergyPointFilterCopyWith(
          EnergyPointFilter value, O Function(EnergyPointFilter) then) =
      _$EnergyPointFilterCopyWithImpl<O>;
  O call(
      {List<String>? id,
      List<EnergyPointHasFilter?>? has,
      List<EnergyPointFilter?>? and,
      List<EnergyPointFilter?>? or,
      EnergyPointFilter? not});
}

class _$EnergyPointFilterCopyWithImpl<O>
    implements $EnergyPointFilterCopyWith<O> {
  final EnergyPointFilter _value;
  final O Function(EnergyPointFilter) _then;
  _$EnergyPointFilterCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? id = dimmutable,
      Object? has = dimmutable,
      Object? and = dimmutable,
      Object? or = dimmutable,
      Object? not = dimmutable}) {
    return _then(_value.copyWith(
        id: id == dimmutable ? _value.id : id as List<String>?,
        has: has == dimmutable
            ? _value.has
            : has as List<EnergyPointHasFilter?>?,
        and: and == dimmutable ? _value.and : and as List<EnergyPointFilter?>?,
        or: or == dimmutable ? _value.or : or as List<EnergyPointFilter?>?,
        not: not == dimmutable ? _value.not : not as EnergyPointFilter?));
  }
}

abstract class _$EnergyPointFilterCopyWith<O>
    implements $EnergyPointFilterCopyWith<O> {
  factory _$EnergyPointFilterCopyWith(
          EnergyPointFilter value, O Function(EnergyPointFilter) then) =
      __$EnergyPointFilterCopyWithImpl<O>;
  O call(
      {List<String>? id,
      List<EnergyPointHasFilter?>? has,
      List<EnergyPointFilter?>? and,
      List<EnergyPointFilter?>? or,
      EnergyPointFilter? not});
}

class __$EnergyPointFilterCopyWithImpl<O>
    extends _$EnergyPointFilterCopyWithImpl<O>
    implements _$EnergyPointFilterCopyWith<O> {
  __$EnergyPointFilterCopyWithImpl(
      EnergyPointFilter _value, O Function(EnergyPointFilter) _then)
      : super(_value, (v) => _then(v));

  @override
  EnergyPointFilter get _value => super._value;

  @override
  O call(
      {Object? id = dimmutable,
      Object? has = dimmutable,
      Object? and = dimmutable,
      Object? or = dimmutable,
      Object? not = dimmutable}) {
    return _then(EnergyPointFilter(
        id: id == dimmutable ? _value.id : id as List<String>?,
        has: has == dimmutable
            ? _value.has
            : has as List<EnergyPointHasFilter?>?,
        and: and == dimmutable ? _value.and : and as List<EnergyPointFilter?>?,
        or: or == dimmutable ? _value.or : or as List<EnergyPointFilter?>?,
        not: not == dimmutable ? _value.not : not as EnergyPointFilter?));
  }
}

@JsonSerializable()
class NearFilter {
  final double distance;

  final PointRef coordinate;

  @JsonKey(ignore: true)
  _$NearFilterCopyWith<NearFilter> get copyWith =>
      __$NearFilterCopyWithImpl<NearFilter>(this, IdentityFn);

  const NearFilter({required this.distance, required this.coordinate});

  factory NearFilter.fromJson(Map<String, dynamic> json) =>
      _$NearFilterFromJson(json);

  Map<String, dynamic> toJson() => _$NearFilterToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is NearFilter &&
        o.distance == distance &&
        o.coordinate == coordinate;
  }

  @override
  int get hashCode => distance.hashCode ^ coordinate.hashCode;

  @override
  String toString() =>
      "NearFilter(distance: ${this.distance}, coordinate: ${this.coordinate})";
}

abstract class $NearFilterCopyWith<O> {
  factory $NearFilterCopyWith(NearFilter value, O Function(NearFilter) then) =
      _$NearFilterCopyWithImpl<O>;
  O call({double distance, PointRef coordinate});
}

class _$NearFilterCopyWithImpl<O> implements $NearFilterCopyWith<O> {
  final NearFilter _value;
  final O Function(NearFilter) _then;
  _$NearFilterCopyWithImpl(this._value, this._then);

  @override
  O call({Object? distance = dimmutable, Object? coordinate = dimmutable}) {
    return _then(_value.copyWith(
        distance: distance == dimmutable ? _value.distance : distance as double,
        coordinate: coordinate == dimmutable
            ? _value.coordinate
            : coordinate as PointRef));
  }
}

abstract class _$NearFilterCopyWith<O> implements $NearFilterCopyWith<O> {
  factory _$NearFilterCopyWith(NearFilter value, O Function(NearFilter) then) =
      __$NearFilterCopyWithImpl<O>;
  O call({double distance, PointRef coordinate});
}

class __$NearFilterCopyWithImpl<O> extends _$NearFilterCopyWithImpl<O>
    implements _$NearFilterCopyWith<O> {
  __$NearFilterCopyWithImpl(NearFilter _value, O Function(NearFilter) _then)
      : super(_value, (v) => _then(v));

  @override
  NearFilter get _value => super._value;

  @override
  O call({Object? distance = dimmutable, Object? coordinate = dimmutable}) {
    return _then(NearFilter(
        distance: distance == dimmutable ? _value.distance : distance as double,
        coordinate: coordinate == dimmutable
            ? _value.coordinate
            : coordinate as PointRef));
  }
}

@JsonSerializable()
class IntersectsFilter {
  final PolygonRef? polygon;

  final MultiPolygonRef? multiPolygon;

  @JsonKey(ignore: true)
  _$IntersectsFilterCopyWith<IntersectsFilter> get copyWith =>
      __$IntersectsFilterCopyWithImpl<IntersectsFilter>(this, IdentityFn);

  const IntersectsFilter({this.polygon, this.multiPolygon});

  factory IntersectsFilter.fromJson(Map<String, dynamic> json) =>
      _$IntersectsFilterFromJson(json);

  Map<String, dynamic> toJson() => _$IntersectsFilterToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is IntersectsFilter &&
        o.polygon == polygon &&
        o.multiPolygon == multiPolygon;
  }

  @override
  int get hashCode => polygon.hashCode ^ multiPolygon.hashCode;

  @override
  String toString() =>
      "IntersectsFilter(polygon: ${this.polygon}, multiPolygon: ${this.multiPolygon})";
}

abstract class $IntersectsFilterCopyWith<O> {
  factory $IntersectsFilterCopyWith(
          IntersectsFilter value, O Function(IntersectsFilter) then) =
      _$IntersectsFilterCopyWithImpl<O>;
  O call({PolygonRef? polygon, MultiPolygonRef? multiPolygon});
}

class _$IntersectsFilterCopyWithImpl<O>
    implements $IntersectsFilterCopyWith<O> {
  final IntersectsFilter _value;
  final O Function(IntersectsFilter) _then;
  _$IntersectsFilterCopyWithImpl(this._value, this._then);

  @override
  O call({Object? polygon = dimmutable, Object? multiPolygon = dimmutable}) {
    return _then(_value.copyWith(
        polygon:
            polygon == dimmutable ? _value.polygon : polygon as PolygonRef?,
        multiPolygon: multiPolygon == dimmutable
            ? _value.multiPolygon
            : multiPolygon as MultiPolygonRef?));
  }
}

abstract class _$IntersectsFilterCopyWith<O>
    implements $IntersectsFilterCopyWith<O> {
  factory _$IntersectsFilterCopyWith(
          IntersectsFilter value, O Function(IntersectsFilter) then) =
      __$IntersectsFilterCopyWithImpl<O>;
  O call({PolygonRef? polygon, MultiPolygonRef? multiPolygon});
}

class __$IntersectsFilterCopyWithImpl<O>
    extends _$IntersectsFilterCopyWithImpl<O>
    implements _$IntersectsFilterCopyWith<O> {
  __$IntersectsFilterCopyWithImpl(
      IntersectsFilter _value, O Function(IntersectsFilter) _then)
      : super(_value, (v) => _then(v));

  @override
  IntersectsFilter get _value => super._value;

  @override
  O call({Object? polygon = dimmutable, Object? multiPolygon = dimmutable}) {
    return _then(IntersectsFilter(
        polygon:
            polygon == dimmutable ? _value.polygon : polygon as PolygonRef?,
        multiPolygon: multiPolygon == dimmutable
            ? _value.multiPolygon
            : multiPolygon as MultiPolygonRef?));
  }
}

@JsonSerializable()
class GenerateMutationParams {
  final bool? add;

  final bool? update;

  final bool? delete;

  @JsonKey(ignore: true)
  _$GenerateMutationParamsCopyWith<GenerateMutationParams> get copyWith =>
      __$GenerateMutationParamsCopyWithImpl<GenerateMutationParams>(
          this, IdentityFn);

  const GenerateMutationParams({this.add, this.update, this.delete});

  factory GenerateMutationParams.fromJson(Map<String, dynamic> json) =>
      _$GenerateMutationParamsFromJson(json);

  Map<String, dynamic> toJson() => _$GenerateMutationParamsToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is GenerateMutationParams &&
        o.add == add &&
        o.update == update &&
        o.delete == delete;
  }

  @override
  int get hashCode => add.hashCode ^ update.hashCode ^ delete.hashCode;

  @override
  String toString() =>
      "GenerateMutationParams(add: ${this.add}, update: ${this.update}, delete: ${this.delete})";
}

abstract class $GenerateMutationParamsCopyWith<O> {
  factory $GenerateMutationParamsCopyWith(GenerateMutationParams value,
          O Function(GenerateMutationParams) then) =
      _$GenerateMutationParamsCopyWithImpl<O>;
  O call({bool? add, bool? update, bool? delete});
}

class _$GenerateMutationParamsCopyWithImpl<O>
    implements $GenerateMutationParamsCopyWith<O> {
  final GenerateMutationParams _value;
  final O Function(GenerateMutationParams) _then;
  _$GenerateMutationParamsCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? add = dimmutable,
      Object? update = dimmutable,
      Object? delete = dimmutable}) {
    return _then(_value.copyWith(
        add: add == dimmutable ? _value.add : add as bool?,
        update: update == dimmutable ? _value.update : update as bool?,
        delete: delete == dimmutable ? _value.delete : delete as bool?));
  }
}

abstract class _$GenerateMutationParamsCopyWith<O>
    implements $GenerateMutationParamsCopyWith<O> {
  factory _$GenerateMutationParamsCopyWith(GenerateMutationParams value,
          O Function(GenerateMutationParams) then) =
      __$GenerateMutationParamsCopyWithImpl<O>;
  O call({bool? add, bool? update, bool? delete});
}

class __$GenerateMutationParamsCopyWithImpl<O>
    extends _$GenerateMutationParamsCopyWithImpl<O>
    implements _$GenerateMutationParamsCopyWith<O> {
  __$GenerateMutationParamsCopyWithImpl(
      GenerateMutationParams _value, O Function(GenerateMutationParams) _then)
      : super(_value, (v) => _then(v));

  @override
  GenerateMutationParams get _value => super._value;

  @override
  O call(
      {Object? add = dimmutable,
      Object? update = dimmutable,
      Object? delete = dimmutable}) {
    return _then(GenerateMutationParams(
        add: add == dimmutable ? _value.add : add as bool?,
        update: update == dimmutable ? _value.update : update as bool?,
        delete: delete == dimmutable ? _value.delete : delete as bool?));
  }
}

@JsonSerializable()
class IntFilter {
  final int? eq;

  @JsonKey(name: 'in')
  final List<int?>? in_$d;

  final int? le;

  final int? lt;

  final int? ge;

  final int? gt;

  final IntRange? between;

  @JsonKey(ignore: true)
  _$IntFilterCopyWith<IntFilter> get copyWith =>
      __$IntFilterCopyWithImpl<IntFilter>(this, IdentityFn);

  const IntFilter(
      {this.eq, this.in_$d, this.le, this.lt, this.ge, this.gt, this.between});

  factory IntFilter.fromJson(Map<String, dynamic> json) =>
      _$IntFilterFromJson(json);

  Map<String, dynamic> toJson() => _$IntFilterToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is IntFilter &&
        o.eq == eq &&
        o.in_$d == in_$d &&
        o.le == le &&
        o.lt == lt &&
        o.ge == ge &&
        o.gt == gt &&
        o.between == between;
  }

  @override
  int get hashCode =>
      eq.hashCode ^
      in_$d.hashCode ^
      le.hashCode ^
      lt.hashCode ^
      ge.hashCode ^
      gt.hashCode ^
      between.hashCode;

  @override
  String toString() =>
      "IntFilter(eq: ${this.eq}, in_\$d: ${this.in_$d}, le: ${this.le}, lt: ${this.lt}, ge: ${this.ge}, gt: ${this.gt}, between: ${this.between})";
}

abstract class $IntFilterCopyWith<O> {
  factory $IntFilterCopyWith(IntFilter value, O Function(IntFilter) then) =
      _$IntFilterCopyWithImpl<O>;
  O call(
      {int? eq,
      List<int?>? in_$d,
      int? le,
      int? lt,
      int? ge,
      int? gt,
      IntRange? between});
}

class _$IntFilterCopyWithImpl<O> implements $IntFilterCopyWith<O> {
  final IntFilter _value;
  final O Function(IntFilter) _then;
  _$IntFilterCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? eq = dimmutable,
      Object? in_$d = dimmutable,
      Object? le = dimmutable,
      Object? lt = dimmutable,
      Object? ge = dimmutable,
      Object? gt = dimmutable,
      Object? between = dimmutable}) {
    return _then(_value.copyWith(
        eq: eq == dimmutable ? _value.eq : eq as int?,
        in_$d: in_$d == dimmutable ? _value.in_$d : in_$d as List<int?>?,
        le: le == dimmutable ? _value.le : le as int?,
        lt: lt == dimmutable ? _value.lt : lt as int?,
        ge: ge == dimmutable ? _value.ge : ge as int?,
        gt: gt == dimmutable ? _value.gt : gt as int?,
        between:
            between == dimmutable ? _value.between : between as IntRange?));
  }
}

abstract class _$IntFilterCopyWith<O> implements $IntFilterCopyWith<O> {
  factory _$IntFilterCopyWith(IntFilter value, O Function(IntFilter) then) =
      __$IntFilterCopyWithImpl<O>;
  O call(
      {int? eq,
      List<int?>? in_$d,
      int? le,
      int? lt,
      int? ge,
      int? gt,
      IntRange? between});
}

class __$IntFilterCopyWithImpl<O> extends _$IntFilterCopyWithImpl<O>
    implements _$IntFilterCopyWith<O> {
  __$IntFilterCopyWithImpl(IntFilter _value, O Function(IntFilter) _then)
      : super(_value, (v) => _then(v));

  @override
  IntFilter get _value => super._value;

  @override
  O call(
      {Object? eq = dimmutable,
      Object? in_$d = dimmutable,
      Object? le = dimmutable,
      Object? lt = dimmutable,
      Object? ge = dimmutable,
      Object? gt = dimmutable,
      Object? between = dimmutable}) {
    return _then(IntFilter(
        eq: eq == dimmutable ? _value.eq : eq as int?,
        in_$d: in_$d == dimmutable ? _value.in_$d : in_$d as List<int?>?,
        le: le == dimmutable ? _value.le : le as int?,
        lt: lt == dimmutable ? _value.lt : lt as int?,
        ge: ge == dimmutable ? _value.ge : ge as int?,
        gt: gt == dimmutable ? _value.gt : gt as int?,
        between:
            between == dimmutable ? _value.between : between as IntRange?));
  }
}

@JsonSerializable()
class StringTermFilter {
  final String? allofterms;

  final String? anyofterms;

  @JsonKey(ignore: true)
  _$StringTermFilterCopyWith<StringTermFilter> get copyWith =>
      __$StringTermFilterCopyWithImpl<StringTermFilter>(this, IdentityFn);

  const StringTermFilter({this.allofterms, this.anyofterms});

  factory StringTermFilter.fromJson(Map<String, dynamic> json) =>
      _$StringTermFilterFromJson(json);

  Map<String, dynamic> toJson() => _$StringTermFilterToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is StringTermFilter &&
        o.allofterms == allofterms &&
        o.anyofterms == anyofterms;
  }

  @override
  int get hashCode => allofterms.hashCode ^ anyofterms.hashCode;

  @override
  String toString() =>
      "StringTermFilter(allofterms: ${this.allofterms}, anyofterms: ${this.anyofterms})";
}

abstract class $StringTermFilterCopyWith<O> {
  factory $StringTermFilterCopyWith(
          StringTermFilter value, O Function(StringTermFilter) then) =
      _$StringTermFilterCopyWithImpl<O>;
  O call({String? allofterms, String? anyofterms});
}

class _$StringTermFilterCopyWithImpl<O>
    implements $StringTermFilterCopyWith<O> {
  final StringTermFilter _value;
  final O Function(StringTermFilter) _then;
  _$StringTermFilterCopyWithImpl(this._value, this._then);

  @override
  O call({Object? allofterms = dimmutable, Object? anyofterms = dimmutable}) {
    return _then(_value.copyWith(
        allofterms: allofterms == dimmutable
            ? _value.allofterms
            : allofterms as String?,
        anyofterms: anyofterms == dimmutable
            ? _value.anyofterms
            : anyofterms as String?));
  }
}

abstract class _$StringTermFilterCopyWith<O>
    implements $StringTermFilterCopyWith<O> {
  factory _$StringTermFilterCopyWith(
          StringTermFilter value, O Function(StringTermFilter) then) =
      __$StringTermFilterCopyWithImpl<O>;
  O call({String? allofterms, String? anyofterms});
}

class __$StringTermFilterCopyWithImpl<O>
    extends _$StringTermFilterCopyWithImpl<O>
    implements _$StringTermFilterCopyWith<O> {
  __$StringTermFilterCopyWithImpl(
      StringTermFilter _value, O Function(StringTermFilter) _then)
      : super(_value, (v) => _then(v));

  @override
  StringTermFilter get _value => super._value;

  @override
  O call({Object? allofterms = dimmutable, Object? anyofterms = dimmutable}) {
    return _then(StringTermFilter(
        allofterms: allofterms == dimmutable
            ? _value.allofterms
            : allofterms as String?,
        anyofterms: anyofterms == dimmutable
            ? _value.anyofterms
            : anyofterms as String?));
  }
}

@JsonSerializable()
class StringRegExpFilter {
  final String? regexp;

  @JsonKey(ignore: true)
  _$StringRegExpFilterCopyWith<StringRegExpFilter> get copyWith =>
      __$StringRegExpFilterCopyWithImpl<StringRegExpFilter>(this, IdentityFn);

  const StringRegExpFilter({this.regexp});

  factory StringRegExpFilter.fromJson(Map<String, dynamic> json) =>
      _$StringRegExpFilterFromJson(json);

  Map<String, dynamic> toJson() => _$StringRegExpFilterToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is StringRegExpFilter && o.regexp == regexp;
  }

  @override
  int get hashCode => regexp.hashCode;

  @override
  String toString() => "StringRegExpFilter(regexp: ${this.regexp})";
}

abstract class $StringRegExpFilterCopyWith<O> {
  factory $StringRegExpFilterCopyWith(
          StringRegExpFilter value, O Function(StringRegExpFilter) then) =
      _$StringRegExpFilterCopyWithImpl<O>;
  O call({String? regexp});
}

class _$StringRegExpFilterCopyWithImpl<O>
    implements $StringRegExpFilterCopyWith<O> {
  final StringRegExpFilter _value;
  final O Function(StringRegExpFilter) _then;
  _$StringRegExpFilterCopyWithImpl(this._value, this._then);

  @override
  O call({Object? regexp = dimmutable}) {
    return _then(_value.copyWith(
        regexp: regexp == dimmutable ? _value.regexp : regexp as String?));
  }
}

abstract class _$StringRegExpFilterCopyWith<O>
    implements $StringRegExpFilterCopyWith<O> {
  factory _$StringRegExpFilterCopyWith(
          StringRegExpFilter value, O Function(StringRegExpFilter) then) =
      __$StringRegExpFilterCopyWithImpl<O>;
  O call({String? regexp});
}

class __$StringRegExpFilterCopyWithImpl<O>
    extends _$StringRegExpFilterCopyWithImpl<O>
    implements _$StringRegExpFilterCopyWith<O> {
  __$StringRegExpFilterCopyWithImpl(
      StringRegExpFilter _value, O Function(StringRegExpFilter) _then)
      : super(_value, (v) => _then(v));

  @override
  StringRegExpFilter get _value => super._value;

  @override
  O call({Object? regexp = dimmutable}) {
    return _then(StringRegExpFilter(
        regexp: regexp == dimmutable ? _value.regexp : regexp as String?));
  }
}

@JsonSerializable()
class AddBreedInput {
  final String name;

  final String info;

  final List<String> images;

  final List<EnergyPointRef> energyPoints;

  @JsonKey(ignore: true)
  _$AddBreedInputCopyWith<AddBreedInput> get copyWith =>
      __$AddBreedInputCopyWithImpl<AddBreedInput>(this, IdentityFn);

  const AddBreedInput(
      {required this.name,
      required this.info,
      required this.images,
      required this.energyPoints});

  factory AddBreedInput.fromJson(Map<String, dynamic> json) =>
      _$AddBreedInputFromJson(json);

  Map<String, dynamic> toJson() => _$AddBreedInputToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is AddBreedInput &&
        o.name == name &&
        o.info == info &&
        o.images == images &&
        o.energyPoints == energyPoints;
  }

  @override
  int get hashCode =>
      name.hashCode ^ info.hashCode ^ images.hashCode ^ energyPoints.hashCode;

  @override
  String toString() =>
      "AddBreedInput(name: ${this.name}, info: ${this.info}, images: ${this.images}, energyPoints: ${this.energyPoints})";
}

abstract class $AddBreedInputCopyWith<O> {
  factory $AddBreedInputCopyWith(
          AddBreedInput value, O Function(AddBreedInput) then) =
      _$AddBreedInputCopyWithImpl<O>;
  O call(
      {String name,
      String info,
      List<String> images,
      List<EnergyPointRef> energyPoints});
}

class _$AddBreedInputCopyWithImpl<O> implements $AddBreedInputCopyWith<O> {
  final AddBreedInput _value;
  final O Function(AddBreedInput) _then;
  _$AddBreedInputCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? name = dimmutable,
      Object? info = dimmutable,
      Object? images = dimmutable,
      Object? energyPoints = dimmutable}) {
    return _then(_value.copyWith(
        name: name == dimmutable ? _value.name : name as String,
        info: info == dimmutable ? _value.info : info as String,
        images: images == dimmutable ? _value.images : images as List<String>,
        energyPoints: energyPoints == dimmutable
            ? _value.energyPoints
            : energyPoints as List<EnergyPointRef>));
  }
}

abstract class _$AddBreedInputCopyWith<O> implements $AddBreedInputCopyWith<O> {
  factory _$AddBreedInputCopyWith(
          AddBreedInput value, O Function(AddBreedInput) then) =
      __$AddBreedInputCopyWithImpl<O>;
  O call(
      {String name,
      String info,
      List<String> images,
      List<EnergyPointRef> energyPoints});
}

class __$AddBreedInputCopyWithImpl<O> extends _$AddBreedInputCopyWithImpl<O>
    implements _$AddBreedInputCopyWith<O> {
  __$AddBreedInputCopyWithImpl(
      AddBreedInput _value, O Function(AddBreedInput) _then)
      : super(_value, (v) => _then(v));

  @override
  AddBreedInput get _value => super._value;

  @override
  O call(
      {Object? name = dimmutable,
      Object? info = dimmutable,
      Object? images = dimmutable,
      Object? energyPoints = dimmutable}) {
    return _then(AddBreedInput(
        name: name == dimmutable ? _value.name : name as String,
        info: info == dimmutable ? _value.info : info as String,
        images: images == dimmutable ? _value.images : images as List<String>,
        energyPoints: energyPoints == dimmutable
            ? _value.energyPoints
            : energyPoints as List<EnergyPointRef>));
  }
}

@JsonSerializable()
class FloatFilter {
  final double? eq;

  @JsonKey(name: 'in')
  final List<double?>? in_$d;

  final double? le;

  final double? lt;

  final double? ge;

  final double? gt;

  final FloatRange? between;

  @JsonKey(ignore: true)
  _$FloatFilterCopyWith<FloatFilter> get copyWith =>
      __$FloatFilterCopyWithImpl<FloatFilter>(this, IdentityFn);

  const FloatFilter(
      {this.eq, this.in_$d, this.le, this.lt, this.ge, this.gt, this.between});

  factory FloatFilter.fromJson(Map<String, dynamic> json) =>
      _$FloatFilterFromJson(json);

  Map<String, dynamic> toJson() => _$FloatFilterToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is FloatFilter &&
        o.eq == eq &&
        o.in_$d == in_$d &&
        o.le == le &&
        o.lt == lt &&
        o.ge == ge &&
        o.gt == gt &&
        o.between == between;
  }

  @override
  int get hashCode =>
      eq.hashCode ^
      in_$d.hashCode ^
      le.hashCode ^
      lt.hashCode ^
      ge.hashCode ^
      gt.hashCode ^
      between.hashCode;

  @override
  String toString() =>
      "FloatFilter(eq: ${this.eq}, in_\$d: ${this.in_$d}, le: ${this.le}, lt: ${this.lt}, ge: ${this.ge}, gt: ${this.gt}, between: ${this.between})";
}

abstract class $FloatFilterCopyWith<O> {
  factory $FloatFilterCopyWith(
          FloatFilter value, O Function(FloatFilter) then) =
      _$FloatFilterCopyWithImpl<O>;
  O call(
      {double? eq,
      List<double?>? in_$d,
      double? le,
      double? lt,
      double? ge,
      double? gt,
      FloatRange? between});
}

class _$FloatFilterCopyWithImpl<O> implements $FloatFilterCopyWith<O> {
  final FloatFilter _value;
  final O Function(FloatFilter) _then;
  _$FloatFilterCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? eq = dimmutable,
      Object? in_$d = dimmutable,
      Object? le = dimmutable,
      Object? lt = dimmutable,
      Object? ge = dimmutable,
      Object? gt = dimmutable,
      Object? between = dimmutable}) {
    return _then(_value.copyWith(
        eq: eq == dimmutable ? _value.eq : eq as double?,
        in_$d: in_$d == dimmutable ? _value.in_$d : in_$d as List<double?>?,
        le: le == dimmutable ? _value.le : le as double?,
        lt: lt == dimmutable ? _value.lt : lt as double?,
        ge: ge == dimmutable ? _value.ge : ge as double?,
        gt: gt == dimmutable ? _value.gt : gt as double?,
        between:
            between == dimmutable ? _value.between : between as FloatRange?));
  }
}

abstract class _$FloatFilterCopyWith<O> implements $FloatFilterCopyWith<O> {
  factory _$FloatFilterCopyWith(
          FloatFilter value, O Function(FloatFilter) then) =
      __$FloatFilterCopyWithImpl<O>;
  O call(
      {double? eq,
      List<double?>? in_$d,
      double? le,
      double? lt,
      double? ge,
      double? gt,
      FloatRange? between});
}

class __$FloatFilterCopyWithImpl<O> extends _$FloatFilterCopyWithImpl<O>
    implements _$FloatFilterCopyWith<O> {
  __$FloatFilterCopyWithImpl(FloatFilter _value, O Function(FloatFilter) _then)
      : super(_value, (v) => _then(v));

  @override
  FloatFilter get _value => super._value;

  @override
  O call(
      {Object? eq = dimmutable,
      Object? in_$d = dimmutable,
      Object? le = dimmutable,
      Object? lt = dimmutable,
      Object? ge = dimmutable,
      Object? gt = dimmutable,
      Object? between = dimmutable}) {
    return _then(FloatFilter(
        eq: eq == dimmutable ? _value.eq : eq as double?,
        in_$d: in_$d == dimmutable ? _value.in_$d : in_$d as List<double?>?,
        le: le == dimmutable ? _value.le : le as double?,
        lt: lt == dimmutable ? _value.lt : lt as double?,
        ge: ge == dimmutable ? _value.ge : ge as double?,
        gt: gt == dimmutable ? _value.gt : gt as double?,
        between:
            between == dimmutable ? _value.between : between as FloatRange?));
  }
}

@JsonSerializable()
class CustomHTTP {
  final String url;

  final HTTPMethod method;

  final String? body;

  final String? graphql;

  final Mode? mode;

  final List<String>? forwardHeaders;

  final List<String>? secretHeaders;

  final List<String>? introspectionHeaders;

  final bool? skipIntrospection;

  @JsonKey(ignore: true)
  _$CustomHTTPCopyWith<CustomHTTP> get copyWith =>
      __$CustomHTTPCopyWithImpl<CustomHTTP>(this, IdentityFn);

  const CustomHTTP(
      {required this.url,
      required this.method,
      this.body,
      this.graphql,
      this.mode,
      this.forwardHeaders,
      this.secretHeaders,
      this.introspectionHeaders,
      this.skipIntrospection});

  factory CustomHTTP.fromJson(Map<String, dynamic> json) =>
      _$CustomHTTPFromJson(json);

  Map<String, dynamic> toJson() => _$CustomHTTPToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is CustomHTTP &&
        o.url == url &&
        o.method == method &&
        o.body == body &&
        o.graphql == graphql &&
        o.mode == mode &&
        o.forwardHeaders == forwardHeaders &&
        o.secretHeaders == secretHeaders &&
        o.introspectionHeaders == introspectionHeaders &&
        o.skipIntrospection == skipIntrospection;
  }

  @override
  int get hashCode =>
      url.hashCode ^
      method.hashCode ^
      body.hashCode ^
      graphql.hashCode ^
      mode.hashCode ^
      forwardHeaders.hashCode ^
      secretHeaders.hashCode ^
      introspectionHeaders.hashCode ^
      skipIntrospection.hashCode;

  @override
  String toString() =>
      "CustomHTTP(url: ${this.url}, method: ${this.method}, body: ${this.body}, graphql: ${this.graphql}, mode: ${this.mode}, forwardHeaders: ${this.forwardHeaders}, secretHeaders: ${this.secretHeaders}, introspectionHeaders: ${this.introspectionHeaders}, skipIntrospection: ${this.skipIntrospection})";
}

abstract class $CustomHTTPCopyWith<O> {
  factory $CustomHTTPCopyWith(CustomHTTP value, O Function(CustomHTTP) then) =
      _$CustomHTTPCopyWithImpl<O>;
  O call(
      {String url,
      HTTPMethod method,
      String? body,
      String? graphql,
      Mode? mode,
      List<String>? forwardHeaders,
      List<String>? secretHeaders,
      List<String>? introspectionHeaders,
      bool? skipIntrospection});
}

class _$CustomHTTPCopyWithImpl<O> implements $CustomHTTPCopyWith<O> {
  final CustomHTTP _value;
  final O Function(CustomHTTP) _then;
  _$CustomHTTPCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? url = dimmutable,
      Object? method = dimmutable,
      Object? body = dimmutable,
      Object? graphql = dimmutable,
      Object? mode = dimmutable,
      Object? forwardHeaders = dimmutable,
      Object? secretHeaders = dimmutable,
      Object? introspectionHeaders = dimmutable,
      Object? skipIntrospection = dimmutable}) {
    return _then(_value.copyWith(
        url: url == dimmutable ? _value.url : url as String,
        method: method == dimmutable ? _value.method : method as HTTPMethod,
        body: body == dimmutable ? _value.body : body as String?,
        graphql: graphql == dimmutable ? _value.graphql : graphql as String?,
        mode: mode == dimmutable ? _value.mode : mode as Mode?,
        forwardHeaders: forwardHeaders == dimmutable
            ? _value.forwardHeaders
            : forwardHeaders as List<String>?,
        secretHeaders: secretHeaders == dimmutable
            ? _value.secretHeaders
            : secretHeaders as List<String>?,
        introspectionHeaders: introspectionHeaders == dimmutable
            ? _value.introspectionHeaders
            : introspectionHeaders as List<String>?,
        skipIntrospection: skipIntrospection == dimmutable
            ? _value.skipIntrospection
            : skipIntrospection as bool?));
  }
}

abstract class _$CustomHTTPCopyWith<O> implements $CustomHTTPCopyWith<O> {
  factory _$CustomHTTPCopyWith(CustomHTTP value, O Function(CustomHTTP) then) =
      __$CustomHTTPCopyWithImpl<O>;
  O call(
      {String url,
      HTTPMethod method,
      String? body,
      String? graphql,
      Mode? mode,
      List<String>? forwardHeaders,
      List<String>? secretHeaders,
      List<String>? introspectionHeaders,
      bool? skipIntrospection});
}

class __$CustomHTTPCopyWithImpl<O> extends _$CustomHTTPCopyWithImpl<O>
    implements _$CustomHTTPCopyWith<O> {
  __$CustomHTTPCopyWithImpl(CustomHTTP _value, O Function(CustomHTTP) _then)
      : super(_value, (v) => _then(v));

  @override
  CustomHTTP get _value => super._value;

  @override
  O call(
      {Object? url = dimmutable,
      Object? method = dimmutable,
      Object? body = dimmutable,
      Object? graphql = dimmutable,
      Object? mode = dimmutable,
      Object? forwardHeaders = dimmutable,
      Object? secretHeaders = dimmutable,
      Object? introspectionHeaders = dimmutable,
      Object? skipIntrospection = dimmutable}) {
    return _then(CustomHTTP(
        url: url == dimmutable ? _value.url : url as String,
        method: method == dimmutable ? _value.method : method as HTTPMethod,
        body: body == dimmutable ? _value.body : body as String?,
        graphql: graphql == dimmutable ? _value.graphql : graphql as String?,
        mode: mode == dimmutable ? _value.mode : mode as Mode?,
        forwardHeaders: forwardHeaders == dimmutable
            ? _value.forwardHeaders
            : forwardHeaders as List<String>?,
        secretHeaders: secretHeaders == dimmutable
            ? _value.secretHeaders
            : secretHeaders as List<String>?,
        introspectionHeaders: introspectionHeaders == dimmutable
            ? _value.introspectionHeaders
            : introspectionHeaders as List<String>?,
        skipIntrospection: skipIntrospection == dimmutable
            ? _value.skipIntrospection
            : skipIntrospection as bool?));
  }
}

class DeleteEnergyPointPayload {
  void energyPoint(EnergyPoint energyPoint,
      {EnergyPointFilter? filter,
      int? first,
      int? offset,
      String? alias,
      String? directive}) {}
  void msg({String? alias, String? directive}) {}
  void numUids({String? alias, String? directive}) {}
  void d__typename;
}

class EnergyPoint {
  void id({String? alias, String? directive}) {}
  void pont(Point pont, {String? alias, String? directive}) {}
  void breeds(Breed breeds,
      {BreedFilter? filter,
      BreedOrder? order,
      int? first,
      int? offset,
      String? alias,
      String? directive}) {}
  void breedsAggregate(BreedAggregateResult breedsAggregate,
      {BreedFilter? filter, String? alias, String? directive}) {}
  void d__typename;
}

class DeleteBreedPayload {
  void breed(Breed breed,
      {BreedFilter? filter,
      BreedOrder? order,
      int? first,
      int? offset,
      String? alias,
      String? directive}) {}
  void msg({String? alias, String? directive}) {}
  void numUids({String? alias, String? directive}) {}
  void d__typename;
}

class __Type {
  void kind(__TypeKind kind, {String? alias, String? directive}) {}
  void name({String? alias, String? directive}) {}
  void description({String? alias, String? directive}) {}
  void fields(__Field fields,
      {bool? includeDeprecated, String? alias, String? directive}) {}
  void interfaces(__Type interfaces, {String? alias, String? directive}) {}
  void possibleTypes(__Type possibleTypes,
      {String? alias, String? directive}) {}
  void enumValues(__EnumValue enumValues,
      {bool? includeDeprecated, String? alias, String? directive}) {}
  void inputFields(__InputValue inputFields,
      {String? alias, String? directive}) {}
  void ofType(__Type ofType, {String? alias, String? directive}) {}
  void d__typename;
}

class Polygon {
  void coordinates(PointList coordinates, {String? alias, String? directive}) {}
  void d__typename;
}

class UpdateBreedPayload {
  void breed(Breed breed,
      {BreedFilter? filter,
      BreedOrder? order,
      int? first,
      int? offset,
      String? alias,
      String? directive}) {}
  void numUids({String? alias, String? directive}) {}
  void d__typename;
}

class __Field {
  void name({String? alias, String? directive}) {}
  void description({String? alias, String? directive}) {}
  void args(__InputValue args, {String? alias, String? directive}) {}
  void type(__Type type, {String? alias, String? directive}) {}
  void isDeprecated({String? alias, String? directive}) {}
  void deprecationReason({String? alias, String? directive}) {}
  void d__typename;
}

class Breed {
  void name({String? alias, String? directive}) {}
  void info({String? alias, String? directive}) {}
  void images({String? alias, String? directive}) {}
  void energyPoints(EnergyPoint energyPoints,
      {EnergyPointFilter? filter,
      int? first,
      int? offset,
      String? alias,
      String? directive}) {}
  void energyPointsAggregate(EnergyPointAggregateResult energyPointsAggregate,
      {EnergyPointFilter? filter, String? alias, String? directive}) {}
  void d__typename;
}

class AddBreedPayload {
  void breed(Breed breed,
      {BreedFilter? filter,
      BreedOrder? order,
      int? first,
      int? offset,
      String? alias,
      String? directive}) {}
  void numUids({String? alias, String? directive}) {}
  void d__typename;
}

class BreedAggregateResult {
  void count({String? alias, String? directive}) {}
  void nameMin({String? alias, String? directive}) {}
  void nameMax({String? alias, String? directive}) {}
  void infoMin({String? alias, String? directive}) {}
  void infoMax({String? alias, String? directive}) {}
  void d__typename;
}

class Point {
  void longitude({String? alias, String? directive}) {}
  void latitude({String? alias, String? directive}) {}
  void d__typename;
}

class EnergyPointAggregateResult {
  void count({String? alias, String? directive}) {}
  void d__typename;
}

class Query {
  Query([String? args]);
  void getBreed(Breed getBreed,
      {required String name, String? alias, String? directive}) {}
  void queryBreed(Breed queryBreed,
      {BreedFilter? filter,
      BreedOrder? order,
      int? first,
      int? offset,
      String? alias,
      String? directive}) {}
  void aggregateBreed(BreedAggregateResult aggregateBreed,
      {BreedFilter? filter, String? alias, String? directive}) {}
  void getEnergyPoint(EnergyPoint getEnergyPoint,
      {required String id, String? alias, String? directive}) {}
  void queryEnergyPoint(EnergyPoint queryEnergyPoint,
      {EnergyPointFilter? filter,
      int? first,
      int? offset,
      String? alias,
      String? directive}) {}
  void aggregateEnergyPoint(EnergyPointAggregateResult aggregateEnergyPoint,
      {EnergyPointFilter? filter, String? alias, String? directive}) {}
  void d__typename;
}

class __InputValue {
  void name({String? alias, String? directive}) {}
  void description({String? alias, String? directive}) {}
  void type(__Type type, {String? alias, String? directive}) {}
  void defaultValue({String? alias, String? directive}) {}
  void d__typename;
}

class __Directive {
  void name({String? alias, String? directive}) {}
  void description({String? alias, String? directive}) {}
  void locations(__DirectiveLocation locations,
      {String? alias, String? directive}) {}
  void args(__InputValue args, {String? alias, String? directive}) {}
  void d__typename;
}

class AddEnergyPointPayload {
  void energyPoint(EnergyPoint energyPoint,
      {EnergyPointFilter? filter,
      int? first,
      int? offset,
      String? alias,
      String? directive}) {}
  void numUids({String? alias, String? directive}) {}
  void d__typename;
}

class __Schema {
  void types(__Type types, {String? alias, String? directive}) {}
  void queryType(__Type queryType, {String? alias, String? directive}) {}
  void mutationType(__Type mutationType, {String? alias, String? directive}) {}
  void subscriptionType(__Type subscriptionType,
      {String? alias, String? directive}) {}
  void directives(__Directive directives, {String? alias, String? directive}) {}
  void d__typename;
}

class MultiPolygon {
  void polygons(Polygon polygons, {String? alias, String? directive}) {}
  void d__typename;
}

class __EnumValue {
  void name({String? alias, String? directive}) {}
  void description({String? alias, String? directive}) {}
  void isDeprecated({String? alias, String? directive}) {}
  void deprecationReason({String? alias, String? directive}) {}
  void d__typename;
}

class UpdateEnergyPointPayload {
  void energyPoint(EnergyPoint energyPoint,
      {EnergyPointFilter? filter,
      int? first,
      int? offset,
      String? alias,
      String? directive}) {}
  void numUids({String? alias, String? directive}) {}
  void d__typename;
}

class Mutation {
  Mutation([String? args]);
  void addBreed(AddBreedPayload addBreed,
      {required List<AddBreedInput> input,
      bool? upsert,
      String? alias,
      String? directive}) {}
  void updateBreed(UpdateBreedPayload updateBreed,
      {required UpdateBreedInput input, String? alias, String? directive}) {}
  void deleteBreed(DeleteBreedPayload deleteBreed,
      {required BreedFilter filter, String? alias, String? directive}) {}
  void addEnergyPoint(AddEnergyPointPayload addEnergyPoint,
      {required List<AddEnergyPointInput> input,
      String? alias,
      String? directive}) {}
  void updateEnergyPoint(UpdateEnergyPointPayload updateEnergyPoint,
      {required UpdateEnergyPointInput input,
      String? alias,
      String? directive}) {}
  void deleteEnergyPoint(DeleteEnergyPointPayload deleteEnergyPoint,
      {required EnergyPointFilter filter, String? alias, String? directive}) {}
  void d__typename;
}

class PointList {
  void points(Point points, {String? alias, String? directive}) {}
  void d__typename;
}
