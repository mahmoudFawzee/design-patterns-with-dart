import 'package:observer_pattern/models/current_condition_display.dart';
import 'package:observer_pattern/models/weather_data.dart';

void main(List<String> arguments) {
  play();
}

Future play() async {
  final weatherData = WeatherData(humidity: 50.0, pressure: 15.2, temp: 26.9);
  final currentConditionDisplay = CurrentConditionDisplay(name: 'ali');
  //currentConditionDisplay.register(controller: weatherData.streamController);
  //final statisticsDisplay = StatisticsDisplay();
  //final forecastDisplay = ForecastDisplay();
  weatherData.registerObserver(currentConditionDisplay);
  await weatherData.setMeasurements(50.3, 20.1, 9.0);
  await weatherData.setMeasurements(0.3, 2.1, 1.0);
  await weatherData.removeObserver(currentConditionDisplay);
  await weatherData.setMeasurements(5.3, 0.1, .6);
}
