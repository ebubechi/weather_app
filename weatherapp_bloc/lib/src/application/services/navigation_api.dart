import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_bloc/src/presentation/bloc/weather_bloc.dart';
// import 'package:weatherapp_bloc/src/presentation/ui/views/search_view.dart';

class NavigationService {
  void navPush(BuildContext context, var route) {
   final weatherBloc = BlocProvider.of<WeatherBloc>(context);
          weatherBloc.add(route);
  }
}
