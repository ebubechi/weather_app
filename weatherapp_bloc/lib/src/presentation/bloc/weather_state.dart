part of 'weather_bloc.dart';

@immutable
abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final WeatherModel weather;

  const WeatherLoaded({required this.weather});
  @override
  List<Object> get props => [weather];
}

class GoBack extends WeatherState {}


class WeatherError extends WeatherState {}
