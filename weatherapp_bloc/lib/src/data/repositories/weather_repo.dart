import 'package:weatherapp_bloc/src/application/services/weather_api.dart';
import 'package:weatherapp_bloc/src/domain/models/weather.dart';


class WeatherRepository {
  final WeatherApiClient weatherApiClient;

  WeatherRepository({required this.weatherApiClient});

  Future<WeatherModel> getWeather(String city) async {
    final WeatherModel weather = await weatherApiClient.getWeatherAPI(city);
    return weather;
  }
}
