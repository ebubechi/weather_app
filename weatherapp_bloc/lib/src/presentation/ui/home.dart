// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_bloc/src/domain/models/weather.dart';
import 'package:weatherapp_bloc/src/presentation/bloc/weather_bloc.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Weather')),
      body: Center(
        child: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            if (state is WeatherInitial) {
              return const BuildInitialInput();
            } else if (state is WeatherLoading) {
              return const BuildLoading();
            } else if (state is WeatherLoaded) {
              return BuildColumnWithData(weather: state.weather,);
            } else if (state is WeatherError) {
              return const BuildInitialInput();
            }
            throw Exception('null exception');
          },
        ),
      ),
    );
  }
}

class BuildInitialInput extends StatelessWidget {
  const BuildInitialInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CityInputField());
  }
}
class BuildLoading extends StatelessWidget {
  const BuildLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class BuildColumnWithData extends StatelessWidget {
  final Weatherr weather;
  const BuildColumnWithData({
    super.key,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          weather.name,
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
          ),
        ),
        const CityInputField(),
      ],
    );
  }
}

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
          hintText: 'Enter a city',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          suffixIcon: const Icon(Icons.search),
        ),
      ),
    );
  }
}
