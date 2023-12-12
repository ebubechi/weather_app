import 'package:flutter/material.dart';
import 'package:weatherapp_bloc/src/application/services/navigation_api.dart';
import 'package:weatherapp_bloc/src/presentation/ui/widgets/input.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 48.0),
          Row(
            children: [
              const SizedBox(width: 20.0),
              Image.asset('assets/images/menu-icon.png'),
              const SizedBox(width: 100.0),
              const Text(
                'Weather',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff21BCD0),
                ),
              ),
            ],
          ),
          const SizedBox(height: 320.0),
          const CityInputField(),
        ],
      ),
    );
  }
}
