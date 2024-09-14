import 'package:_weather/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:_weather/models/weather_model.dart';
import 'package:_weather/services/weather_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(NoWeatherState());
   WeatherModel? weatherModel;
  getWeather({required String cityName}) async {
    try {
      weatherModel =
          await WeatherService(Dio()).getCurrentWeather(cityName: cityName);

      emit(WeatherLoadedState(weatherModel!));
    } catch (e) {
      emit(WeatherFaliureState(e.toString()));
    }
  }
}
