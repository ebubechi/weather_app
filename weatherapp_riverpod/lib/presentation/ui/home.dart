import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:weatherapp_riverpod/core/models/weather.dart';
import 'package:weatherapp_riverpod/presentation/providers/weather.dart';

class WeatherSearch extends HookConsumerWidget {
  const WeatherSearch({super.key});

  @override
  Widget build(BuildContext context, ref) {
    // ignore: invalid_use_of_protected_member
    final weather = ref.watch(weatherProvider);
    final weatherData = AsyncData(weather);
    final cityController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Search'),
      ),
      body: weatherData.when(
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