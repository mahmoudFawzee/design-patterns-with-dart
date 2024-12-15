import 'package:observer_pattern/interfaces/observer.dart';
import 'package:observer_pattern/models/weather_data.dart';

abstract class Subject {
  void removeObserver(Observer o);
  void registerObserver(Observer o);
  Future notifyObservers({required WeatherData weatherData});
}
