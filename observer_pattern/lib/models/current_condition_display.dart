import 'dart:async';

import 'package:observer_pattern/interfaces/display_elements.dart';
import 'package:observer_pattern/interfaces/observer.dart';
import 'package:observer_pattern/models/weather_data.dart';

final class CurrentConditionDisplay implements DisplayElements, Observer {
  double? _temp;
  double? _humidity;

  CurrentConditionDisplay({required String name}) {
    print("i've been created $name!!!");
  }

  @override
  StreamSubscription? subscription;

  @override
  void display() {
    print('current conditions => temp : $_temp , humidity : $_humidity');
  }

  @override
  void update(double? temp, double? humidity, double? pressure) {
    _humidity = humidity;
    _temp = temp;
    display();
  }

  @override
  void register({required StreamController<WeatherData> controller}) {
    subscription = controller.stream.listen((data) {
      update(data.getTemperature(), data.getHumidity(), data.getPressure());
    });
  }

  @override
  void remove({required StreamController<WeatherData> controller}) {
    if (subscription != null) {
      subscription?.cancel();
      print('i have been removed');
    }
  }
}
