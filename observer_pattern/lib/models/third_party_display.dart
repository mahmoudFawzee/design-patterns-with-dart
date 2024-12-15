import 'dart:async';

import 'package:observer_pattern/interfaces/display_elements.dart';
import 'package:observer_pattern/interfaces/observer.dart';
import 'package:observer_pattern/models/weather_data.dart';

final class ThirdPartyDisplay implements DisplayElements, Observer {
  @override
  void display() {
    // TODO: implement display
  }

  @override
  void update(double? temp,double? humidity,double? pressure) {
    // TODO: implement update
  }

  @override
  StreamSubscription? subscription;

  @override
  void register({required StreamController<WeatherData> controller}) {
    // TODO: implement register
  }

  @override
  void remove({required StreamController<WeatherData> controller}) {
    // TODO: implement remove
  }
}
