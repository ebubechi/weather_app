import 'package:flutter_test/flutter_test.dart';
import 'package:weatherapp_stacked/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('WeatherreposetoryServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}