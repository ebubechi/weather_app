import 'package:flutter/material.dart';
import 'package:weatherapp_bloc/src/presentation/ui/widgets/input.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CityInputField());
  }
}