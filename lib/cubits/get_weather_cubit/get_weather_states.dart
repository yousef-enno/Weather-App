
import 'package:_weather/models/weather_model.dart';

class WeatherState{}

class NoWeatherState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final WeatherModel weatherModel;

  WeatherLoadedState(this.weatherModel);
}

class WeatherFaliureState extends WeatherState {

  final String errorMessage;

  WeatherFaliureState(this.errorMessage);
}
