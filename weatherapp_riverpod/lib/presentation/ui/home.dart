import 'dart:developer';

import 'package:flutter/material.dart';
// import 'package:weatherapp_riverpod/core/models/weather.dart';
import 'package:dio/dio.dart';
import 'package:weatherapp_riverpod/core/models/weather.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final Dio dio = Dio();

    Future<Weatherr> fetchWeather(Dio dio) async {
      final appid = dotenv.env['appid'];
      final Response weatherData = await dio.get(
          'https://api.openweathermap.org/data/2.5/weather?q=london&appid=$appid');
      //  final Response weatherData = await dio.get('api.openweathermap.org/data/2.5/weather', queryParameters: {'q': 'kaduna', 'appid': '8f2919ec7c284025269279ed86fc2369'});

      log(weatherData.data.toString());

      final Weatherr weather =
          Weatherr.fromJson(weatherData.data! as Map<String, dynamic>);
      log(weather.coord.toString());
      return weather;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FutureBuilder(
        future: fetchWeather(dio),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            log(snapshot.error.toString());
            return const Center(
              child: Text('An error has occurred!'),
            );
          } else if (snapshot.hasData) {
            return Center(
              child: Column(
                children: [
                  Text(snapshot.data!.name),
                  Text(snapshot.data!.coord.toString()),
                  Text(snapshot.data!.weather.toString()),
                  Text(snapshot.data!.sys.toString()),
                  Text(snapshot.data!.wind.toString()),
                  Text(snapshot.data!.main.toString()),
                ],
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
