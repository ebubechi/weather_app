// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherModelImpl _$$WeatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WeatherModelImpl(
      coord: json['coord'] as Map<String, dynamic>,
      weather: (json['weather'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      main: json['main'] as Map<String, dynamic>,
      wind: json['wind'] as Map<String, dynamic>,
      sys: json['sys'] as Map<String, dynamic>,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$WeatherModelImplToJson(_$WeatherModelImpl instance) =>
    <String, dynamic>{
      'coord': instance.coord,
      'weather': instance.weather,
      'main': instance.main,
      'wind': instance.wind,
      'sys': instance.sys,
      'name': instance.name,
    };
