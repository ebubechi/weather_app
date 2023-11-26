import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weatherapp_riverpod/src/data/repositories/weather_repo.dart';
import 'package:weatherapp_riverpod/src/domain/models/weather.dart';

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

// final weatherRepositoryProvider =
//     Provider.autoDispose<WeatherRepository>((ref) {
//   return WeatherRepository();
// });

@riverpod
WeatherRepository weatherRepository(WeatherRepositoryRef ref) {
  return WeatherRepository();
}

// class AsyncWeatherNotifier extends AsyncNotifier<Weatherr> {

  // Future<void> getWeather(String city) async {
  //   final weather =
  //       await ref.read(weatherRepositoryProvider).fetchWeather(city);
  //   state = AsyncData(weather);
  // }

  // @override
  // Weatherr build() => const Weatherr(
  //       coord: {},
  //       weather: [{}],
  //       main: {},
  //       wind: {},
  //       sys: {},
  //       name: 'City Name',
  //     );
// }

// final weatherProvider = AsyncNotifierProvider<AsyncWeatherNotifier, Weatherr>(
//     () => AsyncWeatherNotifier());

@riverpod
class Weather extends _$Weather {
  Future<void> getWeather(String city) async {
    final weather =
        await ref.read(weatherRepositoryProvider).fetchWeather(city);
    state = weather;
  }

  @override
  Weatherr build() => const Weatherr(
        coord: {},
        weather: [{}],
        main: {},
        wind: {},
        sys: {},
        name: 'City Name',
      );
  // Add methods to mutate the state
}

