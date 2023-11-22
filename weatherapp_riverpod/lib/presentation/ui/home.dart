import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:weatherapp_riverpod/core/models/weather.dart';

Future<Weatherr> getWeather(String city) async {
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

class WeatherRepository {
  Future<Weatherr> fetchWeather(String city) async {
    final weather = getWeather(city);
    return weather;
  }
}

final weatherProvider = StateNotifierProvider<WeatherNotifier, Weatherr>(
  (ref) {
    return WeatherNotifier(ref);
  },
);

final weatherRepositoryProvider = Provider<WeatherRepository>((ref) {
  return WeatherRepository();
});

class WeatherNotifier extends StateNotifier<Weatherr> {
  WeatherNotifier(this._ref)
      : super(
          const Weatherr(
            coord: {},
            weather: [{}],
            main: {},
            wind: {},
            sys: {},
            name: '',
          ),
        );

  final StateNotifierProviderRef _ref;

  Future<void> getWeather(String city) async {
    final weather = await _ref.read(weatherRepositoryProvider).fetchWeather(city);
    state = weather;
  }
}

class WeatherSearch extends HookConsumerWidget {
  const WeatherSearch({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final weather = AsyncData(ref.watch(weatherProvider));
    final cityController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Search'),
      ),
      body: weather.when(
        data: (Weatherr weather) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (weather.name.isNotEmpty)
                  Text(
                    weather.name,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                TextField(
                  controller: cityController,
                  decoration: const InputDecoration(labelText: 'Enter city'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ref.read(weatherProvider.notifier).getWeather(
                          cityController.text,
                        );
                    cityController.clear();
                  },
                  child: const Text('Search'),
                ),
              ],
            ),
          );
        },
        error: (Object error, StackTrace stackTrace) {
          log(error.toString());
          throw Exception('Unfortunately an error has occurred');
        },
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }
}




// import 'package:weatherapp_riverpod/core/models/weather.dart';
// // import 'package:weatherapp_riverpod/core/models/weather.dart';
// import 'package:weatherapp_riverpod/presentation/providers/weather.dart';

// final newCityKey = UniqueKey();

// final cityProvider = StateProvider<String>((ref) {
//   return 'doha';
// });

// class HomePage extends StatefulHookConsumerWidget {
//   const HomePage({
//     super.key,
//   });
//   @override
//   createState() => _HomePageState();
// }

// class _HomePageState extends ConsumerState<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     String city = ref.watch(cityProvider);
//     AsyncValue<Weatherr> weatherAsync = ref.watch(fetchWeatherProvider(city));

//     final newCityController = useTextEditingController();
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(''),
//       ),
//       body: weatherAsync.when(
//           data: (weather) => Center(
//                 child: Column(
//                   children: [
//                     TextField(
//                       key: newCityKey,
//                       controller: newCityController,
//                       decoration: const InputDecoration(
//                         labelText: 'Search city weather',
//                       ),
//                       onSubmitted: (value) async {
//                         if (value.isNotEmpty) {
//                           city = value;
//                         }
//                         // final data =
//                         //     await ref.read(fetchWeatherProvider(city).future);
//                         // weatherAsync = AsyncData(data);
//                         // log(weatherAsync.value!.name);
//                         newCityController.clear();
//                         log(weather.name);
//                       },
//                     ),
//                     Text(city),
//                     // Text(ref.watch(fetchWeatherProvider(city)).value!.name),
//                   ],
//                 ),
//               ),
//           error: (e, st) => Center(
//                 child: Text(e.toString()),
//               ),
//           loading: () => const Center(child: CircularProgressIndicator())),
//     );
//   }
// }

// import 'package:http/http.dart' as http;
// import 'dart:convert';