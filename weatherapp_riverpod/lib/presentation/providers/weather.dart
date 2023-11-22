import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weatherapp_riverpod/core/models/weather.dart';

part 'weather.g.dart';

@riverpod
Future<Weatherr> fetchWeather(
  FetchWeatherRef ref,
  String city,
) async {
    final appid = dotenv.env['appid'];
    final Dio dio = Dio();
    final Response weatherData = await dio.get(
      'https://api.openweathermap.org/data/2.5/weather',
      queryParameters: {'q': city, 'appid': appid},
    );
    if (weatherData.statusCode == 200) {
      final Weatherr weather =
          Weatherr.fromJson(weatherData.data! as Map<String, dynamic>);
      return weather;
    } else {
      throw Exception('Failed to load weather data');
    }
}
