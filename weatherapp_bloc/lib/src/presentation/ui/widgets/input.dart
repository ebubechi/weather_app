import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_bloc/src/presentation/bloc/weather_bloc.dart';

class CityInputField extends StatelessWidget {
  const CityInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: TextField(
        onSubmitted: (cityName) {
          final weatherBloc = BlocProvider.of<WeatherBloc>(context);
          weatherBloc.add(GetWeather(city: cityName));
        },
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: Color(0xffffffff)),
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
