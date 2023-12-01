import 'package:weatherapp_riverpod/src/application/services/weather_api.dart';
import 'package:weatherapp_riverpod/src/domain/models/weather.dart';

class WeatherRepository {
  Future<WeatherModel> fetchWeather(String city) async {
    final weather = getWeatherAPI(city);
    return weather;
  }
}