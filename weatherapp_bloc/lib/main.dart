import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weatherapp_bloc/src/application/services/weather_api.dart';
import 'package:weatherapp_bloc/src/data/repositories/weather_repo.dart';
import 'package:weatherapp_bloc/src/presentation/bloc/weather_bloc.dart';
import 'package:weatherapp_bloc/src/presentation/ui/home.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  final WeatherRepository weatherRepository =
      WeatherRepository(weatherApiClient: WeatherApiClient());
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: FlexColorScheme.light(scheme: FlexScheme.aquaBlue).toTheme,
      darkTheme: FlexColorScheme.dark(scheme: FlexScheme.aquaBlue).toTheme,
      themeMode: ThemeMode.light,
      home: BlocProvider(
          create: (BuildContext context) =>
              WeatherBloc(weatherRepository: weatherRepository),
          child: const WeatherPage()),
    ),
  );
}