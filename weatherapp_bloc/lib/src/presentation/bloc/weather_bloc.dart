// import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_bloc/src/data/repositories/weather_repo.dart';
import 'package:weatherapp_bloc/src/domain/models/weather.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;
  WeatherBloc({required this.weatherRepository}) : super(WeatherInitial()) {
    on<GetWeather>((event, emit) async {
      emit(WeatherLoading());
      try {
        final WeatherModel weather =
            await weatherRepository.getWeather(event.city);
        emit(WeatherLoaded(weather: weather));
      } catch (_) {
        emit(WeatherError());
      }
    });
    on<GoBackToSearch>((event, emit) async {
      emit(WeatherInitial());
    });
    // Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    //   if (event is GetWeather) {
    //     yield WeatherLoading();
    //     try {
    //       final Weatherr weather = await weatherRepository.getWeather(event.city);
    //       yield WeatherLoaded(weather: weather);
    //     } catch (_) {
    //       yield WeatherError();
    //     }
    //   }
    // }
  }
}
