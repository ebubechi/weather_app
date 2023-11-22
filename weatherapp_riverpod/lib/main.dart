import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:weatherapp_riverpod/presentation/ui/home.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(ProviderScope(
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: FlexColorScheme.light(scheme: FlexScheme.wasabi).toTheme,
      darkTheme: FlexColorScheme.dark(scheme: FlexScheme.wasabi).toTheme,
      themeMode: ThemeMode.light,
      home:  const WeatherSearch(),
      // home:  const HomePage(),
    ),
  ));
}
