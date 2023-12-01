import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_bloc/src/application/services/navigation_api.dart';
import 'package:weatherapp_bloc/src/presentation/bloc/weather_bloc.dart';
import 'package:weatherapp_bloc/src/presentation/ui/views/search_view.dart';
import 'package:weatherapp_bloc/src/presentation/ui/views/weather_view.dart';
import 'package:weatherapp_bloc/src/presentation/ui/widgets/loading.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            var nav = NavigationService();

            return state is WeatherInitial
                ? Image.asset('assets/images/menu-icon.png')
                : IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new),
                    onPressed: () => nav.navPush(context),
                  );
          },
        ),
        // automaticallyImplyLeading: false,
        title: const Text('Weather'),
        // actions: const [Icon(Icons.arrow_back_ios_new)],
      ),
      body: Center(
        child: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            if (state is WeatherInitial) {
              return const SearchView();
            } else if (state is WeatherLoading) {
              return const BuildLoading();
            } else if (state is WeatherLoaded) {
              return WeatherView(
                weather: state.weather,
              );
            } else if (state is WeatherError) {
              return const SearchView();
            }
            throw Exception('null exception');
          },
        ),
      ),
    );
  }
}
