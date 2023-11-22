
import 'package:weatherapp_riverpod/core/models/weather.dart';
import 'package:weatherapp_riverpod/core/services/weather_api.dart';

class WeatherRepository {
  Future<Weatherr> fetchWeather(String city) async {
    final weather = getWeatherAPI(city);
    return weather;
  }
}