// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weatherr _$WeatherrFromJson(Map<String, dynamic> json) => Weatherr(
      coord: json['coord'] as Map<String, dynamic>,
      weather: (json['weather'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      main: json['main'] as Map<String, dynamic>,
      wind: json['wind'] as Map<String, dynamic>,
      sys: json['sys'] as Map<String, dynamic>,
      name: json['name'] as String,
    );

Map<String, dynamic> _$WeatherrToJson(Weatherr instance) => <String, dynamic>{
      'coord': instance.coord,
      'weather': instance.weather,
      'main': instance.main,
      'wind': instance.wind,
      'sys': instance.sys,
      'name': instance.name,
    };
