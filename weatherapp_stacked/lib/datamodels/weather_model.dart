import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:json_annotation/json_annotation.dart';
part 'weather_model.g.dart';
part 'weather_model.freezed.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    required Map<String, dynamic> coord,
    required List<Map<String, dynamic>> weather,
    required Map<String, dynamic> main,
    required Map<String, dynamic> wind,
    required Map<String, dynamic> sys,
    required String name,
  }) = _WeatherModel;

    factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}