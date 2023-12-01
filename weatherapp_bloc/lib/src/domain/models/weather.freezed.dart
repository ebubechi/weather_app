// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  Map<String, dynamic> get coord => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get weather => throw _privateConstructorUsedError;
  Map<String, dynamic> get main => throw _privateConstructorUsedError;
  Map<String, dynamic> get wind => throw _privateConstructorUsedError;
  Map<String, dynamic> get sys => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call(
      {Map<String, dynamic> coord,
      List<Map<String, dynamic>> weather,
      Map<String, dynamic> main,
      Map<String, dynamic> wind,
      Map<String, dynamic> sys,
      String name});
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = null,
    Object? weather = null,
    Object? main = null,
    Object? wind = null,
    Object? sys = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherModelImplCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$WeatherModelImplCopyWith(
          _$WeatherModelImpl value, $Res Function(_$WeatherModelImpl) then) =
      __$$WeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic> coord,
      List<Map<String, dynamic>> weather,
      Map<String, dynamic> main,
      Map<String, dynamic> wind,
      Map<String, dynamic> sys,
      String name});
}

/// @nodoc
class __$$WeatherModelImplCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$WeatherModelImpl>
    implements _$$WeatherModelImplCopyWith<$Res> {
  __$$WeatherModelImplCopyWithImpl(
      _$WeatherModelImpl _value, $Res Function(_$WeatherModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = null,
    Object? weather = null,
    Object? main = null,
    Object? wind = null,
    Object? sys = null,
    Object? name = null,
  }) {
    return _then(_$WeatherModelImpl(
      coord: null == coord
          ? _value._coord
          : coord // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      main: null == main
          ? _value._main
          : main // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      wind: null == wind
          ? _value._wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      sys: null == sys
          ? _value._sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherModelImpl implements _WeatherModel {
  const _$WeatherModelImpl(
      {required final Map<String, dynamic> coord,
      required final List<Map<String, dynamic>> weather,
      required final Map<String, dynamic> main,
      required final Map<String, dynamic> wind,
      required final Map<String, dynamic> sys,
      required this.name})
      : _coord = coord,
        _weather = weather,
        _main = main,
        _wind = wind,
        _sys = sys;

  factory _$WeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelImplFromJson(json);

  final Map<String, dynamic> _coord;
  @override
  Map<String, dynamic> get coord {
    if (_coord is EqualUnmodifiableMapView) return _coord;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_coord);
  }

  final List<Map<String, dynamic>> _weather;
  @override
  List<Map<String, dynamic>> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  final Map<String, dynamic> _main;
  @override
  Map<String, dynamic> get main {
    if (_main is EqualUnmodifiableMapView) return _main;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_main);
  }

  final Map<String, dynamic> _wind;
  @override
  Map<String, dynamic> get wind {
    if (_wind is EqualUnmodifiableMapView) return _wind;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_wind);
  }

  final Map<String, dynamic> _sys;
  @override
  Map<String, dynamic> get sys {
    if (_sys is EqualUnmodifiableMapView) return _sys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sys);
  }

  @override
  final String name;

  @override
  String toString() {
    return 'WeatherModel(coord: $coord, weather: $weather, main: $main, wind: $wind, sys: $sys, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelImpl &&
            const DeepCollectionEquality().equals(other._coord, _coord) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            const DeepCollectionEquality().equals(other._main, _main) &&
            const DeepCollectionEquality().equals(other._wind, _wind) &&
            const DeepCollectionEquality().equals(other._sys, _sys) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_coord),
      const DeepCollectionEquality().hash(_weather),
      const DeepCollectionEquality().hash(_main),
      const DeepCollectionEquality().hash(_wind),
      const DeepCollectionEquality().hash(_sys),
      name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      __$$WeatherModelImplCopyWithImpl<_$WeatherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherModel implements WeatherModel {
  const factory _WeatherModel(
      {required final Map<String, dynamic> coord,
      required final List<Map<String, dynamic>> weather,
      required final Map<String, dynamic> main,
      required final Map<String, dynamic> wind,
      required final Map<String, dynamic> sys,
      required final String name}) = _$WeatherModelImpl;

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$WeatherModelImpl.fromJson;

  @override
  Map<String, dynamic> get coord;
  @override
  List<Map<String, dynamic>> get weather;
  @override
  Map<String, dynamic> get main;
  @override
  Map<String, dynamic> get wind;
  @override
  Map<String, dynamic> get sys;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
