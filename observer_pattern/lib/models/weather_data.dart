import 'dart:async';
import 'package:observer_pattern/interfaces/observer.dart';
import 'package:observer_pattern/interfaces/subject.dart';

final class WeatherData implements Subject {
  double? _temp;
  double? _humidity;
  double? _pressure;
  WeatherData(
      {required double humidity,
      required double pressure,
      required double temp})
      : _temp = temp,
        _humidity = humidity,
        _pressure = pressure;
  final StreamController<WeatherData> streamController =
      StreamController<WeatherData>();

  Future setMeasurements(double temp, double humidity, double pressure)async {
    _humidity = humidity;
    _temp = temp;
    _pressure = pressure;
    measurementsChanged(
      weatherDataObj: WeatherData(
        humidity: humidity,
        pressure: pressure,
        temp: temp,
      ),
    );
  }

  double? getTemperature() => _temp;

  double? getHumidity() => _humidity;

  double? getPressure() => _pressure;

  void measurementsChanged({required WeatherData weatherDataObj}) {
    notifyObservers(weatherData: weatherDataObj);
  }

  @override
  Future registerObserver(Observer o) async{
    o.register(controller: streamController);
  }

  @override
  Future removeObserver(Observer o) async{
    o.remove(controller: streamController);
  }

  @override
  Future notifyObservers({required WeatherData weatherData}) async {
    
    streamController.add(weatherData);
    
    
  }
}
