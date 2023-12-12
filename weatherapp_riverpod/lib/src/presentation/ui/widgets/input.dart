import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weatherapp_riverpod/src/application/services/navigation_api.dart';
import 'package:weatherapp_riverpod/src/presentation/providers/weather.dart';
import 'package:weatherapp_riverpod/src/presentation/ui/weather_view.dart';

class CityInputField extends HookConsumerWidget {
  const CityInputField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cityController = useTextEditingController();
    NavigationService nav = NavigationService();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: TextField(
        controller: cityController,
        onSubmitted: (cityName) {
          print(cityName);
          ref.read(weatherProvider.notifier).getWeather(
                cityName,
              );
          cityController.clear();
          nav.navPush(context, const WeatherView());
        },
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: Color(0xff21BCD0)),
          fillColor: const Color(0xffffffff).withOpacity(0.5),
          hintText: 'Enter a city',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          suffixIcon: const Icon(Icons.search),
          suffixIconColor: const Color(0xff21BCD0),
        ),
      ),
    );
  }
}
