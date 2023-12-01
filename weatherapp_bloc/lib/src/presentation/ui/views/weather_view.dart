
import 'package:flutter/material.dart';
import 'package:weatherapp_bloc/src/application/services/navigation_api.dart';
import 'package:weatherapp_bloc/src/domain/models/weather.dart';
import 'package:weatherapp_bloc/src/presentation/ui/views/search_view.dart';

class WeatherView extends StatelessWidget {
  final WeatherModel weather;
  const WeatherView({
    super.key,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    var nav = NavigationService();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ElevatedButton(onPressed: () => nav.navPush(context), child: const Text('back')),
        Text(
          weather.name,
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
          ),
        ),

      ],
    );
  }
}