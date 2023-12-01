import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weatherapp_stacked/datamodels/weather_model.dart';

class WeatherReposetoryService {
    Future<WeatherModel> getWeatherAPI({required String city}) async {
    final appid = dotenv.env['appid'];
    final Dio dio = Dio();
    final Response weatherData = await dio.get(
      'https://api.openweathermap.org/data/2.5/weather',
      queryParameters: {'q': city, 'appid': appid},
    );
    if (weatherData.statusCode == 200) {
      final WeatherModel weather =
          WeatherModel.fromJson(weatherData.data! as Map<String, dynamic>);
      return weather;
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
