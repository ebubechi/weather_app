import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_bloc/src/application/services/navigation_api.dart';
import 'package:weatherapp_bloc/src/presentation/bloc/weather_bloc.dart';
import 'package:weatherapp_bloc/src/presentation/ui/views/search_view.dart';
import 'package:weatherapp_bloc/src/presentation/ui/views/weather_view.dart';
import 'package:weatherapp_bloc/src/presentation/ui/widgets/loading.dart';

class WeatherPage extends StatelessWidget {
  // final WeatherModel weather;

  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff020A13),
      // appBar: AppBar(
      //   backgroundColor: const Color(0xff21BCD0),
      //   leading: BlocBuilder<WeatherBloc, WeatherState>(
      //     builder: (context, state) {
      //       var nav = NavigationService();

      //       return state is WeatherInitial
      //           ? Image.asset('assets/images/menu-icon.png')
      //           : IconButton(
      //               icon: const Icon(Icons.arrow_back_ios_new),
      //               onPressed: () => nav.navPush(context),
      //             );
      //     },
      //   ),
      //   title:
      //       BlocBuilder<WeatherBloc, WeatherState>(builder: (context, state) {
      //     if (state is WeatherInitial) {
      //       return const Text('Weather');
      //     } else if (state is WeatherLoaded) {
      //       return Row(children: [
      //         const SizedBox(width: 90.0),
      //         const Icon(Icons.location_on_rounded),
      //         const SizedBox(width: 10.0),
      //         Text(
      //           state.weather.name,
      //           style: const TextStyle(
      //               fontSize: 26.0, fontWeight: FontWeight.w700),
      //         )
      //       ]);
      //     }
      //     return const Text('Weather');
      //   }),
      // ),
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
