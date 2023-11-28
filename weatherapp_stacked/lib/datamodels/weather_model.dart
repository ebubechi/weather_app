import 'package:json_annotation/json_annotation.dart';
part 'weather_model.g.dart';

@JsonSerializable()
class Weatherr {
  final Map<String, dynamic> coord;
  final List<Map<String, dynamic>> weather;
  final Map<String, dynamic> main;
  final Map<String, dynamic> wind;
  final Map<String, dynamic> sys;
  final String name;

  const Weatherr({
    required this.coord,
    required this.weather,
    required this.main,
    required this.wind,
    required this.sys,
    required this.name,
  });

  factory Weatherr.fromJson(Map<String, dynamic> json) =>
      _$WeatherrFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherrToJson(this);
}
