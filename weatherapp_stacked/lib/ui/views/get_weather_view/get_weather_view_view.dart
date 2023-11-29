import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:weatherapp_stacked/ui/views/get_weather_view/get_weather_view_viewmodel.dart';
// import 'package:weatherapp_stacked/ui/common/app_colors.dart';
// import 'package:weatherapp_stacked/ui/common/ui_helpers.dart';

class GetWeatherView extends StackedView<GetWeatherViewModel> {
  const GetWeatherView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, GetWeatherViewModel viewModel, Widget? child) {
    TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
              child: viewModel.hasError
                  ? Text(viewModel.modelError)
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          viewModel.isBusy ? 'loading' : viewModel.data!.name,
                          style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: TextField(
                            controller: textEditingController,
                            onSubmitted: (cityName) async {
                              viewModel.city = cityName;
                              log(viewModel.city);
                              await viewModel.fetchNewWeather();
                              // log(city.name);
                              textEditingController.clear();
                            },
                            textInputAction: TextInputAction.search,
                            decoration: InputDecoration(
                              hintText: 'Enter a city',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              suffixIcon: const Icon(Icons.search),
                            ),
                          ),
                        ),
                      ],
                    )),
        ),
      ),
    );
  }

  @override
  GetWeatherViewModel viewModelBuilder(BuildContext context) =>
      GetWeatherViewModel();
}
