import 'dart:async';

import 'package:observer_pattern/interfaces/display_elements.dart';
import 'package:observer_pattern/interfaces/observer.dart';
import 'package:observer_pattern/models/weather_data.dart';

final class ForecastDisplay implements DisplayElements, Observer {
  @override
  StreamSubscription? subscription;
  @override
  void display() {
    // TODO: implement display
  }

  @override
  void update(double? temp, double? humidity, double? pressure) {
    // TODO: implement update
  }

  @override
  void register({required StreamController<WeatherData> controller}) {}

  @override
  void remove({required StreamController<WeatherData> controller}) {}
}
