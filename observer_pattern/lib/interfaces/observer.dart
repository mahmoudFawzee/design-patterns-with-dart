import 'dart:async';

import 'package:observer_pattern/models/weather_data.dart';

abstract class Observer {
  //?this is in charge of register and remove.
  StreamSubscription? subscription;
  void update(double? temp, double? humidity, double? pressure);
  //?this will start listen to the stream
  void register({required StreamController<WeatherData> controller});
  //?this will stop listening to the stream
  void remove({required StreamController<WeatherData> controller});
}
