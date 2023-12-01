// import 'dart:developer';

import 'package:stacked/stacked.dart';
import 'package:weatherapp_stacked/app/app.locator.dart';
import 'package:weatherapp_stacked/datamodels/weather_model.dart';
import 'package:weatherapp_stacked/services/weatherreposetory_service.dart';

class GetWeatherViewModel extends FutureViewModel<WeatherModel> {
  final _weatherRepositoryService = locator<WeatherReposetoryService>();

  String city = 'jos';

  @override
  Future<WeatherModel> futureToRun() =>
      _weatherRepositoryService.getWeatherAPI(city: city);

  Future<void> fetchNewWeather() async {
    await initialise();
  }

  @override
  void onError(error) {}
}
